--- 
title: vulnerabilities
hide_title: false
hide_table_of_contents: false
keywords:
  - vulnerabilities
  - security
  - datadog
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage datadog resources using SQL
custom_edit_url: null
image: /img/stackql-datadog-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vulnerabilities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vulnerabilities</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.vulnerabilities" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_vulnerabilities"
    values={[
        { label: 'list_vulnerabilities', value: 'list_vulnerabilities' }
    ]}
>
<TabItem value="list_vulnerabilities">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The unique ID for this vulnerability. (example: 3ecdfea798f2ce8f6e964805a344945f)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The JSON:API attributes of the vulnerability.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>Related entities object.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The JSON:API type. (example: vulnerabilities)</td>
</tr>
</tbody>
</table>
</TabItem>
</Tabs>

## Methods

The following methods are available for this resource:

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Accessible by</th>
    <th>Required Params</th>
    <th>Optional Params</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><a href="#list_vulnerabilities"><CopyableCode code="list_vulnerabilities" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-page[token]"><code>page[token]</code></a>, <a href="#parameter-page[number]"><code>page[number]</code></a>, <a href="#parameter-filter[type]"><code>filter[type]</code></a>, <a href="#parameter-filter[cvss.base.score][`$op`]"><code>filter[cvss.base.score][`$op`]</code></a>, <a href="#parameter-filter[cvss.base.severity]"><code>filter[cvss.base.severity]</code></a>, <a href="#parameter-filter[cvss.base.vector]"><code>filter[cvss.base.vector]</code></a>, <a href="#parameter-filter[cvss.datadog.score][`$op`]"><code>filter[cvss.datadog.score][`$op`]</code></a>, <a href="#parameter-filter[cvss.datadog.severity]"><code>filter[cvss.datadog.severity]</code></a>, <a href="#parameter-filter[cvss.datadog.vector]"><code>filter[cvss.datadog.vector]</code></a>, <a href="#parameter-filter[status]"><code>filter[status]</code></a>, <a href="#parameter-filter[tool]"><code>filter[tool]</code></a>, <a href="#parameter-filter[library.name]"><code>filter[library.name]</code></a>, <a href="#parameter-filter[library.version]"><code>filter[library.version]</code></a>, <a href="#parameter-filter[advisory_id]"><code>filter[advisory_id]</code></a>, <a href="#parameter-filter[risks.exploitation_probability]"><code>filter[risks.exploitation_probability]</code></a>, <a href="#parameter-filter[risks.poc_exploit_available]"><code>filter[risks.poc_exploit_available]</code></a>, <a href="#parameter-filter[risks.exploit_available]"><code>filter[risks.exploit_available]</code></a>, <a href="#parameter-filter[risks.epss.score][`$op`]"><code>filter[risks.epss.score][`$op`]</code></a>, <a href="#parameter-filter[risks.epss.severity]"><code>filter[risks.epss.severity]</code></a>, <a href="#parameter-filter[language]"><code>filter[language]</code></a>, <a href="#parameter-filter[ecosystem]"><code>filter[ecosystem]</code></a>, <a href="#parameter-filter[code_location.location]"><code>filter[code_location.location]</code></a>, <a href="#parameter-filter[code_location.file_path]"><code>filter[code_location.file_path]</code></a>, <a href="#parameter-filter[code_location.method]"><code>filter[code_location.method]</code></a>, <a href="#parameter-filter[fix_available]"><code>filter[fix_available]</code></a>, <a href="#parameter-filter[repo_digests]"><code>filter[repo_digests]</code></a>, <a href="#parameter-filter[origin]"><code>filter[origin]</code></a>, <a href="#parameter-filter[asset.name]"><code>filter[asset.name]</code></a>, <a href="#parameter-filter[asset.type]"><code>filter[asset.type]</code></a>, <a href="#parameter-filter[asset.version.first]"><code>filter[asset.version.first]</code></a>, <a href="#parameter-filter[asset.version.last]"><code>filter[asset.version.last]</code></a>, <a href="#parameter-filter[asset.repository_url]"><code>filter[asset.repository_url]</code></a>, <a href="#parameter-filter[asset.risks.in_production]"><code>filter[asset.risks.in_production]</code></a>, <a href="#parameter-filter[asset.risks.under_attack]"><code>filter[asset.risks.under_attack]</code></a>, <a href="#parameter-filter[asset.risks.is_publicly_accessible]"><code>filter[asset.risks.is_publicly_accessible]</code></a>, <a href="#parameter-filter[asset.risks.has_privileged_access]"><code>filter[asset.risks.has_privileged_access]</code></a>, <a href="#parameter-filter[asset.risks.has_access_to_sensitive_data]"><code>filter[asset.risks.has_access_to_sensitive_data]</code></a>, <a href="#parameter-filter[asset.environments]"><code>filter[asset.environments]</code></a>, <a href="#parameter-filter[asset.teams]"><code>filter[asset.teams]</code></a>, <a href="#parameter-filter[asset.arch]"><code>filter[asset.arch]</code></a>, <a href="#parameter-filter[asset.operating_system.name]"><code>filter[asset.operating_system.name]</code></a>, <a href="#parameter-filter[asset.operating_system.version]"><code>filter[asset.operating_system.version]</code></a></td>
    <td>Get a list of vulnerabilities.<br /><br />### Pagination<br /><br />Pagination is enabled by default in both `vulnerabilities` and `assets`. The size of the page varies depending on the endpoint and cannot be modified. To automate the request of the next page, you can use the links section in the response.<br /><br />This endpoint will return paginated responses. The pages are stored in the links section of the response:<br /><br />```JSON<br />&#123;<br />  "data": [...],<br />  "meta": &#123;...&#125;,<br />  "links": &#123;<br />    "self": "https://.../api/v2/security/vulnerabilities",<br />    "first": "https://.../api/v2/security/vulnerabilities?page[number]=1&page[token]=abc",<br />    "last": "https://.../api/v2/security/vulnerabilities?page[number]=43&page[token]=abc",<br />    "next": "https://.../api/v2/security/vulnerabilities?page[number]=2&page[token]=abc"<br />  &#125;<br />&#125;<br />```<br /><br /><br />- `links.previous` is empty if the first page is requested.<br />- `links.next` is empty if the last page is requested.<br /><br />#### Token<br /><br />Vulnerabilities can be created, updated or deleted at any point in time.<br /><br />Upon the first request, a token is created to ensure consistency across subsequent paginated requests.<br /><br />A token is valid only for 24 hours.<br /><br />#### First request<br /><br />We consider a request to be the first request when there is no `page[token]` parameter.<br /><br />The response of this first request contains the newly created token in the `links` section.<br /><br />This token can then be used in the subsequent paginated requests.<br /><br />#### Subsequent requests<br /><br />Any request containing valid `page[token]` and `page[number]` parameters will be considered a subsequent request.<br /><br />If the `token` is invalid, a `404` response will be returned.<br /><br />If the page `number` is invalid, a `400` response will be returned.<br /><br />### Filtering<br /><br />The request can include some filter parameters to filter the data to be retrieved. The format of the filter parameters follows the [JSON:API format](https://jsonapi.org/format/#fetching-filtering): `filter[$prop_name]`, where `prop_name` is the property name in the entity being filtered by.<br /><br />All filters can include multiple values, where data will be filtered with an OR clause: `filter[title]=Title1,Title2` will filter all vulnerabilities where title is equal to `Title1` OR `Title2`.<br /><br />String filters are case sensitive.<br /><br />Boolean filters accept `true` or `false` as values.<br /><br />Number filters must include an operator as a second filter input: `filter[$prop_name][$operator]`. For example, for the vulnerabilities endpoint: `filter[cvss.base.score][lte]=8`.<br /><br />Available operators are: `eq` (==), `lt` (&lt;), `lte` (&lt;=), `gt` (&gt;) and `gte` (&gt;=).<br /><br />### Metadata<br /><br />Following [JSON:API format](https://jsonapi.org/format/#document-meta), object including non-standard meta-information.<br /><br />This endpoint includes the meta member in the response. For more details on each of the properties included in this section, check the endpoints response tables.<br /><br />```JSON<br />&#123;<br />  "data": [...],<br />  "meta": &#123;<br />    "total": 1500,<br />    "count": 18732,<br />    "token": "some_token"<br />  &#125;,<br />  "links": &#123;...&#125;<br />&#125;<br />```<br /></td>
</tr>
</tbody>
</table>

## Parameters

Parameters can be passed in the `WHERE` clause of a query. Check the [Methods](#methods) section to see which parameters are required or optional for each operation.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-filter[advisory_id]">
    <td><CopyableCode code="filter[advisory_id]" /></td>
    <td><code>string</code></td>
    <td>Filter by advisory ID. (example: TRIVY-CVE-2023-0615)</td>
</tr>
<tr id="parameter-filter[asset.arch]">
    <td><CopyableCode code="filter[asset.arch]" /></td>
    <td><code>string</code></td>
    <td>Filter by asset architecture. (example: arm64)</td>
</tr>
<tr id="parameter-filter[asset.environments]">
    <td><CopyableCode code="filter[asset.environments]" /></td>
    <td><code>string</code></td>
    <td>Filter by asset environments. (example: staging)</td>
</tr>
<tr id="parameter-filter[asset.name]">
    <td><CopyableCode code="filter[asset.name]" /></td>
    <td><code>string</code></td>
    <td>Filter by asset name. (example: datadog-agent)</td>
</tr>
<tr id="parameter-filter[asset.operating_system.name]">
    <td><CopyableCode code="filter[asset.operating_system.name]" /></td>
    <td><code>string</code></td>
    <td>Filter by asset operating system name. (example: ubuntu)</td>
</tr>
<tr id="parameter-filter[asset.operating_system.version]">
    <td><CopyableCode code="filter[asset.operating_system.version]" /></td>
    <td><code>string</code></td>
    <td>Filter by asset operating system version. (example: 24.04)</td>
</tr>
<tr id="parameter-filter[asset.repository_url]">
    <td><CopyableCode code="filter[asset.repository_url]" /></td>
    <td><code>string</code></td>
    <td>Filter by the repository url associated to the asset. (example: github.com/DataDog/datadog-agent.git)</td>
</tr>
<tr id="parameter-filter[asset.risks.has_access_to_sensitive_data]">
    <td><CopyableCode code="filter[asset.risks.has_access_to_sensitive_data]" /></td>
    <td><code>boolean</code></td>
    <td>Filter whether the asset  has access to sensitive data or not. (example: false)</td>
</tr>
<tr id="parameter-filter[asset.risks.has_privileged_access]">
    <td><CopyableCode code="filter[asset.risks.has_privileged_access]" /></td>
    <td><code>boolean</code></td>
    <td>Filter whether the asset is publicly accessible or not. (example: false)</td>
</tr>
<tr id="parameter-filter[asset.risks.in_production]">
    <td><CopyableCode code="filter[asset.risks.in_production]" /></td>
    <td><code>boolean</code></td>
    <td>Filter whether the asset is in production or not. (example: false)</td>
</tr>
<tr id="parameter-filter[asset.risks.is_publicly_accessible]">
    <td><CopyableCode code="filter[asset.risks.is_publicly_accessible]" /></td>
    <td><code>boolean</code></td>
    <td>Filter whether the asset is publicly accessible or not. (example: false)</td>
</tr>
<tr id="parameter-filter[asset.risks.under_attack]">
    <td><CopyableCode code="filter[asset.risks.under_attack]" /></td>
    <td><code>boolean</code></td>
    <td>Filter whether the asset is under attack or not. (example: false)</td>
</tr>
<tr id="parameter-filter[asset.teams]">
    <td><CopyableCode code="filter[asset.teams]" /></td>
    <td><code>string</code></td>
    <td>Filter by asset teams. (example: compute)</td>
</tr>
<tr id="parameter-filter[asset.type]">
    <td><CopyableCode code="filter[asset.type]" /></td>
    <td><code>string</code></td>
    <td>Filter by asset type.</td>
</tr>
<tr id="parameter-filter[asset.version.first]">
    <td><CopyableCode code="filter[asset.version.first]" /></td>
    <td><code>string</code></td>
    <td>Filter by the first version of the asset this vulnerability has been detected on. (example: v1.15.1)</td>
</tr>
<tr id="parameter-filter[asset.version.last]">
    <td><CopyableCode code="filter[asset.version.last]" /></td>
    <td><code>string</code></td>
    <td>Filter by the last version of the asset this vulnerability has been detected on. (example: v1.15.1)</td>
</tr>
<tr id="parameter-filter[code_location.file_path]">
    <td><CopyableCode code="filter[code_location.file_path]" /></td>
    <td><code>string</code></td>
    <td>Filter by vulnerability file path. (example: src/Class.java:100)</td>
</tr>
<tr id="parameter-filter[code_location.location]">
    <td><CopyableCode code="filter[code_location.location]" /></td>
    <td><code>string</code></td>
    <td>Filter by vulnerability location. (example: com.example.Class:100)</td>
</tr>
<tr id="parameter-filter[code_location.method]">
    <td><CopyableCode code="filter[code_location.method]" /></td>
    <td><code>string</code></td>
    <td>Filter by method. (example: FooBar)</td>
</tr>
<tr id="parameter-filter[cvss.base.score][`$op`]">
    <td><CopyableCode code="filter[cvss.base.score][`$op`]" /></td>
    <td><code>number (double)</code></td>
    <td>Filter by vulnerability base (i.e. from the original advisory) severity score. (example: 5.5)</td>
</tr>
<tr id="parameter-filter[cvss.base.severity]">
    <td><CopyableCode code="filter[cvss.base.severity]" /></td>
    <td><code>string</code></td>
    <td>Filter by vulnerability base severity.</td>
</tr>
<tr id="parameter-filter[cvss.base.vector]">
    <td><CopyableCode code="filter[cvss.base.vector]" /></td>
    <td><code>string</code></td>
    <td>Filter by vulnerability base CVSS vector. (example: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H)</td>
</tr>
<tr id="parameter-filter[cvss.datadog.score][`$op`]">
    <td><CopyableCode code="filter[cvss.datadog.score][`$op`]" /></td>
    <td><code>number (double)</code></td>
    <td>Filter by vulnerability Datadog severity score. (example: 4.3)</td>
</tr>
<tr id="parameter-filter[cvss.datadog.severity]">
    <td><CopyableCode code="filter[cvss.datadog.severity]" /></td>
    <td><code>string</code></td>
    <td>Filter by vulnerability Datadog severity.</td>
</tr>
<tr id="parameter-filter[cvss.datadog.vector]">
    <td><CopyableCode code="filter[cvss.datadog.vector]" /></td>
    <td><code>string</code></td>
    <td>Filter by vulnerability Datadog CVSS vector. (example: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H/E:U/RL:X/RC:X/CR:X/IR:X/AR:X/MAV:L/MAC:H/MPR:L/MUI:N/MS:U/MC:N/MI:N/MA:H)</td>
</tr>
<tr id="parameter-filter[ecosystem]">
    <td><CopyableCode code="filter[ecosystem]" /></td>
    <td><code>string</code></td>
    <td>Filter by ecosystem. (example: Deb)</td>
</tr>
<tr id="parameter-filter[fix_available]">
    <td><CopyableCode code="filter[fix_available]" /></td>
    <td><code>boolean</code></td>
    <td>Filter by fix availability. (example: false)</td>
</tr>
<tr id="parameter-filter[language]">
    <td><CopyableCode code="filter[language]" /></td>
    <td><code>string</code></td>
    <td>Filter by language. (example: ubuntu)</td>
</tr>
<tr id="parameter-filter[library.name]">
    <td><CopyableCode code="filter[library.name]" /></td>
    <td><code>string</code></td>
    <td>Filter by library name. (example: linux-aws-5.15)</td>
</tr>
<tr id="parameter-filter[library.version]">
    <td><CopyableCode code="filter[library.version]" /></td>
    <td><code>string</code></td>
    <td>Filter by library version. (example: 5.15.0)</td>
</tr>
<tr id="parameter-filter[origin]">
    <td><CopyableCode code="filter[origin]" /></td>
    <td><code>string</code></td>
    <td>Filter by origin. (example: agentless-scanner)</td>
</tr>
<tr id="parameter-filter[repo_digests]">
    <td><CopyableCode code="filter[repo_digests]" /></td>
    <td><code>string</code></td>
    <td>Filter by vulnerability `repo_digest` (when the vulnerability is related to `Image` asset). (example: sha256:0ae7da091191787229d321e3638e39c319a97d6e20f927d465b519d699215bf7)</td>
</tr>
<tr id="parameter-filter[risks.epss.score][`$op`]">
    <td><CopyableCode code="filter[risks.epss.score][`$op`]" /></td>
    <td><code>number (double)</code></td>
    <td>Filter by vulnerability [EPSS](https://www.first.org/epss/) severity score. (example: 0.00042)</td>
</tr>
<tr id="parameter-filter[risks.epss.severity]">
    <td><CopyableCode code="filter[risks.epss.severity]" /></td>
    <td><code>string</code></td>
    <td>Filter by vulnerability [EPSS](https://www.first.org/epss/) severity.</td>
</tr>
<tr id="parameter-filter[risks.exploit_available]">
    <td><CopyableCode code="filter[risks.exploit_available]" /></td>
    <td><code>boolean</code></td>
    <td>Filter by public exploit availability. (example: false)</td>
</tr>
<tr id="parameter-filter[risks.exploitation_probability]">
    <td><CopyableCode code="filter[risks.exploitation_probability]" /></td>
    <td><code>boolean</code></td>
    <td>Filter by exploitation probability. (example: false)</td>
</tr>
<tr id="parameter-filter[risks.poc_exploit_available]">
    <td><CopyableCode code="filter[risks.poc_exploit_available]" /></td>
    <td><code>boolean</code></td>
    <td>Filter by POC exploit availability. (example: false)</td>
</tr>
<tr id="parameter-filter[status]">
    <td><CopyableCode code="filter[status]" /></td>
    <td><code>string</code></td>
    <td>Filter by the status of the vulnerability.</td>
</tr>
<tr id="parameter-filter[tool]">
    <td><CopyableCode code="filter[tool]" /></td>
    <td><code>string</code></td>
    <td>Filter by the tool of the vulnerability.</td>
</tr>
<tr id="parameter-filter[type]">
    <td><CopyableCode code="filter[type]" /></td>
    <td><code>string</code></td>
    <td>Filter by vulnerability type.</td>
</tr>
<tr id="parameter-page[number]">
    <td><CopyableCode code="page[number]" /></td>
    <td><code>integer (int64)</code></td>
    <td>The page number to be retrieved. It should be equal or greater than `1` (example: 1)</td>
</tr>
<tr id="parameter-page[token]">
    <td><CopyableCode code="page[token]" /></td>
    <td><code>string</code></td>
    <td>Its value must come from the `links` section of the response of the first request. Do not manually edit it. (example: b82cef018aab81ed1d4bb4xb35xxfc065da7efa685fbcecdbd338f3015e3afabbbfa3a911b4984_721ee28a-zecb-4e45-9960-c42065b574f4)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_vulnerabilities"
    values={[
        { label: 'list_vulnerabilities', value: 'list_vulnerabilities' }
    ]}
>
<TabItem value="list_vulnerabilities">

Get a list of vulnerabilities.<br /><br />### Pagination<br /><br />Pagination is enabled by default in both `vulnerabilities` and `assets`. The size of the page varies depending on the endpoint and cannot be modified. To automate the request of the next page, you can use the links section in the response.<br /><br />This endpoint will return paginated responses. The pages are stored in the links section of the response:<br /><br />```JSON<br />&#123;<br />  "data": [...],<br />  "meta": &#123;...&#125;,<br />  "links": &#123;<br />    "self": "https://.../api/v2/security/vulnerabilities",<br />    "first": "https://.../api/v2/security/vulnerabilities?page[number]=1&page[token]=abc",<br />    "last": "https://.../api/v2/security/vulnerabilities?page[number]=43&page[token]=abc",<br />    "next": "https://.../api/v2/security/vulnerabilities?page[number]=2&page[token]=abc"<br />  &#125;<br />&#125;<br />```<br /><br /><br />- `links.previous` is empty if the first page is requested.<br />- `links.next` is empty if the last page is requested.<br /><br />#### Token<br /><br />Vulnerabilities can be created, updated or deleted at any point in time.<br /><br />Upon the first request, a token is created to ensure consistency across subsequent paginated requests.<br /><br />A token is valid only for 24 hours.<br /><br />#### First request<br /><br />We consider a request to be the first request when there is no `page[token]` parameter.<br /><br />The response of this first request contains the newly created token in the `links` section.<br /><br />This token can then be used in the subsequent paginated requests.<br /><br />#### Subsequent requests<br /><br />Any request containing valid `page[token]` and `page[number]` parameters will be considered a subsequent request.<br /><br />If the `token` is invalid, a `404` response will be returned.<br /><br />If the page `number` is invalid, a `400` response will be returned.<br /><br />### Filtering<br /><br />The request can include some filter parameters to filter the data to be retrieved. The format of the filter parameters follows the [JSON:API format](https://jsonapi.org/format/#fetching-filtering): `filter[$prop_name]`, where `prop_name` is the property name in the entity being filtered by.<br /><br />All filters can include multiple values, where data will be filtered with an OR clause: `filter[title]=Title1,Title2` will filter all vulnerabilities where title is equal to `Title1` OR `Title2`.<br /><br />String filters are case sensitive.<br /><br />Boolean filters accept `true` or `false` as values.<br /><br />Number filters must include an operator as a second filter input: `filter[$prop_name][$operator]`. For example, for the vulnerabilities endpoint: `filter[cvss.base.score][lte]=8`.<br /><br />Available operators are: `eq` (==), `lt` (&lt;), `lte` (&lt;=), `gt` (&gt;) and `gte` (&gt;=).<br /><br />### Metadata<br /><br />Following [JSON:API format](https://jsonapi.org/format/#document-meta), object including non-standard meta-information.<br /><br />This endpoint includes the meta member in the response. For more details on each of the properties included in this section, check the endpoints response tables.<br /><br />```JSON<br />&#123;<br />  "data": [...],<br />  "meta": &#123;<br />    "total": 1500,<br />    "count": 18732,<br />    "token": "some_token"<br />  &#125;,<br />  "links": &#123;...&#125;<br />&#125;<br />```<br />

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.security.vulnerabilities
WHERE region = '{{ region }}' -- required
AND page[token] = '{{ page[token] }}'
AND page[number] = '{{ page[number] }}'
AND filter[type] = '{{ filter[type] }}'
AND filter[cvss.base.score][`$op`] = '{{ filter[cvss.base.score][`$op`] }}'
AND filter[cvss.base.severity] = '{{ filter[cvss.base.severity] }}'
AND filter[cvss.base.vector] = '{{ filter[cvss.base.vector] }}'
AND filter[cvss.datadog.score][`$op`] = '{{ filter[cvss.datadog.score][`$op`] }}'
AND filter[cvss.datadog.severity] = '{{ filter[cvss.datadog.severity] }}'
AND filter[cvss.datadog.vector] = '{{ filter[cvss.datadog.vector] }}'
AND filter[status] = '{{ filter[status] }}'
AND filter[tool] = '{{ filter[tool] }}'
AND filter[library.name] = '{{ filter[library.name] }}'
AND filter[library.version] = '{{ filter[library.version] }}'
AND filter[advisory_id] = '{{ filter[advisory_id] }}'
AND filter[risks.exploitation_probability] = '{{ filter[risks.exploitation_probability] }}'
AND filter[risks.poc_exploit_available] = '{{ filter[risks.poc_exploit_available] }}'
AND filter[risks.exploit_available] = '{{ filter[risks.exploit_available] }}'
AND filter[risks.epss.score][`$op`] = '{{ filter[risks.epss.score][`$op`] }}'
AND filter[risks.epss.severity] = '{{ filter[risks.epss.severity] }}'
AND filter[language] = '{{ filter[language] }}'
AND filter[ecosystem] = '{{ filter[ecosystem] }}'
AND filter[code_location.location] = '{{ filter[code_location.location] }}'
AND filter[code_location.file_path] = '{{ filter[code_location.file_path] }}'
AND filter[code_location.method] = '{{ filter[code_location.method] }}'
AND filter[fix_available] = '{{ filter[fix_available] }}'
AND filter[repo_digests] = '{{ filter[repo_digests] }}'
AND filter[origin] = '{{ filter[origin] }}'
AND filter[asset.name] = '{{ filter[asset.name] }}'
AND filter[asset.type] = '{{ filter[asset.type] }}'
AND filter[asset.version.first] = '{{ filter[asset.version.first] }}'
AND filter[asset.version.last] = '{{ filter[asset.version.last] }}'
AND filter[asset.repository_url] = '{{ filter[asset.repository_url] }}'
AND filter[asset.risks.in_production] = '{{ filter[asset.risks.in_production] }}'
AND filter[asset.risks.under_attack] = '{{ filter[asset.risks.under_attack] }}'
AND filter[asset.risks.is_publicly_accessible] = '{{ filter[asset.risks.is_publicly_accessible] }}'
AND filter[asset.risks.has_privileged_access] = '{{ filter[asset.risks.has_privileged_access] }}'
AND filter[asset.risks.has_access_to_sensitive_data] = '{{ filter[asset.risks.has_access_to_sensitive_data] }}'
AND filter[asset.environments] = '{{ filter[asset.environments] }}'
AND filter[asset.teams] = '{{ filter[asset.teams] }}'
AND filter[asset.arch] = '{{ filter[asset.arch] }}'
AND filter[asset.operating_system.name] = '{{ filter[asset.operating_system.name] }}'
AND filter[asset.operating_system.version] = '{{ filter[asset.operating_system.version] }}'
;
```
</TabItem>
</Tabs>
