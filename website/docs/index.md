---
title: datadog
hide_title: false
hide_table_of_contents: false
keywords:
  - datadog
  - stackql
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, monitor, and manage Datadog resources using SQL
custom_edit_url: null
image: /img/providers/datadog/stackql-datadog-provider-featured-image.png
id: 'provider-intro'
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';

Monitoring, alerting and reporting platform for cloud platforms and applications.

:::info[Provider Summary] 

total services: __16__  
total resources: __187__  

:::

See also:   
[[` SHOW `]](https://stackql.io/docs/language-spec/show) [[` DESCRIBE `]](https://stackql.io/docs/language-spec/describe)  [[` REGISTRY `]](https://stackql.io/docs/language-spec/registry)
* * * 

## Installation

To pull the latest version of the `datadog` provider, run the following command:  

```bash
REGISTRY PULL datadog;
```
> To view previous provider versions or to pull a specific provider version, see [here](https://stackql.io/docs/language-spec/registry).  

## Authentication

The following system environment variables are used for authentication by default:  

- <CopyableCode code="DD_API_KEY" /> - Datadog API key (see <a href="https://docs.datadoghq.com/account_management/api-app-keys/#api-keys">Datadog API Key Documentation</a>)
- <CopyableCode code="DD_APP_KEY" /> - Datadog Application Key (see <a href="https://docs.datadoghq.com/account_management/api-app-keys/#application-keys">Datadog Application Key Documentation</a>)
  
These variables are sourced at runtime (from the local machine or as CI variables/secrets).  

<details>

<summary>Using different environment variables</summary>

To use different environment variables (instead of the defaults), use the `--auth` flag of the `stackql` program.  For example:  

```bash

AUTH='{ "datadog": { "type": "custom", "location": "header", "name": "DD-API-KEY", "credentialsenvvar": "YOUR_DD_API_KEY_VAR", "successor": { "type": "custom", "location": "header", "name": "DD-APPLICATION-KEY", "credentialsenvvar": "YOUR_DD_APP_KEY_VAR" }}}'
stackql shell --auth="${AUTH}"

```
or using PowerShell:  

```powershell

$Auth = "{ 'datadog': { 'type': 'custom', 'location': 'header', 'name': 'DD-API-KEY', 'credentialsenvvar': 'YOUR_DD_API_KEY_VAR', 'successor': { 'type': 'custom', 'location': 'header', 'name': 'DD-APPLICATION-KEY', 'credentialsenvvar': 'YOUR_DD_APP_KEY_VAR' }}}"
stackql.exe shell --auth=$Auth

```
</details>

## Services
<div class="row">
<div class="providerDocColumn">
<a href="/services/actions/">actions</a><br />
<a href="/services/apm/">apm</a><br />
<a href="/services/catalog/">catalog</a><br />
<a href="/services/cloud_costs/">cloud_costs</a><br />
<a href="/services/dashboards/">dashboards</a><br />
<a href="/services/digital_experience/">digital_experience</a><br />
<a href="/services/infrastructure/">infrastructure</a><br />
<a href="/services/integrations/">integrations</a><br />
</div>
<div class="providerDocColumn">
<a href="/services/logs/">logs</a><br />
<a href="/services/metrics/">metrics</a><br />
<a href="/services/monitoring/">monitoring</a><br />
<a href="/services/organization/">organization</a><br />
<a href="/services/remote_config/">remote_config</a><br />
<a href="/services/security/">security</a><br />
<a href="/services/service_management/">service_management</a><br />
<a href="/services/software_delivery/">software_delivery</a><br />
</div>
</div>
