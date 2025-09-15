# `datadog` provider for [`stackql`](https://github.com/stackql/stackql)

This repository is used to generate and document the `datadog` provider for StackQL, allowing you to query and manipulate DataDog resources using SQL-like syntax. The provider is built using the `@stackql/provider-utils` package, which provides tools for converting OpenAPI specifications into StackQL-compatible provider schemas.

## Prerequisites

To use the DataDog provider with StackQL, you'll need:

1. A DataDog account with appropriate API credentials
2. DataDog API and Application keys with sufficient permissions for the resources you want to access
3. StackQL CLI installed on your system (see [StackQL](https://github.com/stackql/stackql))

## 1. Download the Open API Specification

First, download the DataDog API OpenAPI specification:

```bash
rm -rf provider-dev/downloaded/*
curl -L https://raw.githubusercontent.com/DataDog/datadog-api-client-typescript/refs/heads/master/.generator/schemas/v2/openapi.yaml \
-o provider-dev/downloaded/openapi.yaml
```

## 2. Split into Service Specs

Next, split the monolithic OpenAPI specification into service-specific files:

```bash
rm -rf provider-dev/source/*
npm run split -- \
  --provider-name datadog \
  --api-doc provider-dev/downloaded/openapi.yaml \
  --svc-discriminator path \
  --output-dir provider-dev/source \
  --overwrite \
  --svc-name-overrides "$(cat <<EOF
{
  "actions_datastores": "actions",
  "scorecard": "apm",
  "apicatalog":"catalog",
  "cost_by_tag": "cloud_costs",
  "cost": "cloud_costs",
  "dashboard": "dashboards",
  "powerpacks": "dashboards",
  "rum": "digital_experience",
  "integration": "integrations",
  "containers": "infrastructure",
  "container": "infrastructure",
  "container_images": "infrastructure",
  "processes": "infrastructure",
  "network": "infrastructure",
  "spa": "infrastructure",
  "ndm": "infrastructure",
  "app_builder": "infrastructure",
  "spans": "metrics",
  "series": "metrics",
  "query": "metrics",
  "datasets": "metrics",
  "monitor": "monitoring",
  "synthetics": "monitoring",
  "user_invitations": "organization",
  "service_accounts": "organization",
  "api_keys": "organization",
  "application_keys": "organization",
  "current_user": "organization",
  "audit": "organization",
  "authn_mappings": "organization",
  "saml_configurations": "organization",
  "org_connections": "organization",
  "team": "organization",
  "users": "organization",
  "org_configs": "organization",
  "roles": "organization",
  "domain_allowlist": "organization",
  "ip_allowlist": "organization",
  "permissions": "organization",
  "restriction_policy": "organization",
  "usage": "organization",
  "deletion": "organization",
  "cloud_security_management": "security",
  "posture_management": "security",
  "sensitive_data_scanner": "security",
  "siem_historical_detections": "security",
  "csm": "security",
  "security_monitoring": "security",
  "agentless_scanning": "security",
  "incidents": "service_management",
  "services": "service_management",
  "teams": "service_management",
  "slo":"service_management",
  "cases":"service_management",
  "events":"service_management",
  "on_call":"service_management",
  "error_tracking":"service_management",
  "downtime":"service_management",          
  "ci": "software_delivery",
  "dora": "software_delivery",
  "workflows": "software_delivery"
}
EOF
)"
```

## 3. Generate Mappings

Generate the mapping configuration that connects OpenAPI operations to StackQL resources:

```bash
npm run generate-mappings -- \
  --provider-name datadog \
  --input-dir provider-dev/source \
  --output-dir provider-dev/config
```

Update the resultant `provider-dev/config/all_services.csv` to add the `stackql_resource_name`, `stackql_method_name`, `stackql_verb` values for each operation.

## 4. Generate Provider

This step transforms the split OpenAPI service specs into a fully-functional StackQL provider by applying the resource and method mappings defined in your CSV file.

```bash
rm -rf provider-dev/openapi/*
npm run generate-provider -- \
  --provider-name datadog \
  --input-dir provider-dev/source \
  --output-dir provider-dev/openapi/src/datadog \
  --config-path provider-dev/config/all_services.csv \
  --servers '[{"url": "https://api.{region}", "variables": {"region": {"default": "datadoghq.com","enum": ["datadoghq.com","us3.datadoghq.com","us5.datadoghq.com","ap1.datadoghq.com","ap2.datadoghq.com","datadoghq.eu","ddog-gov.com"]}}}]' \
  --provider-config '{"auth": { "type": "custom", "location": "header", "name": "DD-API-KEY", "credentialsenvvar": "DD_API_KEY", "successor": { "type": "custom", "location": "header", "name": "DD-APPLICATION-KEY", "credentialsenvvar": "DD_APP_KEY" }}}' \
  --overwrite
```

## 5. Test Provider

### Starting the StackQL Server

Before running tests, start a StackQL server with your provider:

```bash
PROVIDER_REGISTRY_ROOT_DIR="$(pwd)/provider-dev/openapi"
npm run start-server -- --provider datadog --registry $PROVIDER_REGISTRY_ROOT_DIR
```

### Test Meta Routes

Test all metadata routes (services, resources, methods) in the provider:

```bash
npm run test-meta-routes -- datadog --verbose
```

When you're done testing, stop the StackQL server:

```bash
npm run stop-server
```

Use this command to view the server status:

```bash
npm run server-status
```

### Run test queries

Run some test queries against the provider using the `stackql shell`:

```bash
PROVIDER_REGISTRY_ROOT_DIR="$(pwd)/provider-dev/openapi"
REG_STR='{"url": "file://'${PROVIDER_REGISTRY_ROOT_DIR}'", "localDocRoot": "'${PROVIDER_REGISTRY_ROOT_DIR}'", "verifyConfig": {"nopVerify": true}}'
./stackql shell --registry="${REG_STR}"
```

Example queries to try:

```sql
-- Get organization details
SELECT 
name,
description,
public_id,
created,
modified
FROM datadog.organizations.organization;

-- List all active monitors
SELECT
id,
name,
status,
creator,
created,
modified,
type,
tags
FROM datadog.monitors.monitors
WHERE status = 'Alert';

-- View service level objectives
SELECT
id,
name,
description,
tags,
type,
created_at,
modified_at,
thresholds
FROM datadog.service_level_objectives.slos;

-- Check all dashboard lists
SELECT
id,
name,
author,
created,
modified,
dashboard_count
FROM datadog.dashboards.lists;

-- View host metrics
SELECT
host,
metric_name,
metric_value,
tags
FROM datadog.metrics.query
WHERE metric_name = 'system.cpu.user'
AND from_time = unix_timestamp() - 3600
AND to_time = unix_timestamp();
```

## 6. Publish the provider

To publish the provider push the `datadog` dir to `providers/src` in a feature branch of the [`stackql-provider-registry`](https://github.com/stackql/stackql-provider-registry). Follow the [registry release flow](https://github.com/stackql/stackql-provider-registry/blob/dev/docs/build-and-deployment.md).  

Launch the StackQL shell:

```bash
export DEV_REG="{ \"url\": \"https://registry-dev.stackql.app/providers\" }"
./stackql --registry="${DEV_REG}" shell
```

Pull the latest dev `datadog` provider:

```sql
registry pull datadog;
```

Run some test queries to verify the provider works as expected.

## 7. Generate web docs

Provider doc microsites are built using Docusaurus and published using GitHub Pages.  

a. Update `headerContent1.txt` and `headerContent2.txt` accordingly in `provider-dev/docgen/provider-data/`  

b. Update the following in `website/docusaurus.config.js`:  

```js
// Provider configuration - change these for different providers
const providerName = "datadog";
const providerTitle = "DataDog Provider";
```

c. Then generate docs using...

```bash
npm run generate-docs -- \
  --provider-name datadog \
  --provider-dir ./provider-dev/openapi/src/datadog/v00.00.00000 \
  --output-dir ./website \
  --provider-data-dir ./provider-dev/docgen/provider-data
```  

## 8. Test web docs locally

```bash
cd website
# test build
yarn build

# run local dev server
yarn start
```

## 9. Publish web docs to GitHub Pages

Under __Pages__ in the repository, in the __Build and deployment__ section select __GitHub Actions__ as the __Source__. In Netlify DNS create the following records:

| Source Domain | Record Type  | Target |
|---------------|--------------|--------|
| datadog-provider.stackql.io | CNAME | stackql.github.io. |

## License

MIT

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.