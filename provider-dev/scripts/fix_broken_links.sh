# fix relative broken links in generated markdown files
sed -i 's|(#pagination)||g' "provider-dev/openapi/src/datadog/v00.00.00000/services/security.yaml"
sed -i 's|(#filtering)||g' "provider-dev/openapi/src/datadog/v00.00.00000/services/security.yaml"
sed -i 's|(#metadata)||g' "provider-dev/openapi/src/datadog/v00.00.00000/services/security.yaml"