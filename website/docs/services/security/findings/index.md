--- 
title: findings
hide_title: false
hide_table_of_contents: false
keywords:
  - findings
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

Creates, updates, deletes, gets or lists a <code>findings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>findings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.findings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_finding"
    values={[
        { label: 'get_finding', value: 'get_finding' },
        { label: 'list_findings', value: 'list_findings' }
    ]}
>
<TabItem value="get_finding">

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
    <td>The unique ID for this finding. (example: ZGVmLTAwcC1pZXJ-aS0wZjhjNjMyZDNmMzRlZTgzNw==)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The JSON:API attributes of the detailed finding.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The JSON:API type for findings that have the message and resource configuration. (default: detailed_finding, example: detailed_finding)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_findings">

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
    <td>The unique ID for this finding. (example: ZGVmLTAwcC1pZXJ-aS0wZjhjNjMyZDNmMzRlZTgzNw==)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The JSON:API attributes of the finding.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The JSON:API type for findings. (default: finding, example: finding)</td>
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
    <td><a href="#get_finding"><CopyableCode code="get_finding" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-finding_id"><code>finding_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-snapshot_timestamp"><code>snapshot_timestamp</code></a></td>
    <td>Returns a single finding with message and resource configuration.</td>
</tr>
<tr>
    <td><a href="#list_findings"><CopyableCode code="list_findings" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-page[limit]"><code>page[limit]</code></a>, <a href="#parameter-snapshot_timestamp"><code>snapshot_timestamp</code></a>, <a href="#parameter-page[cursor]"><code>page[cursor]</code></a>, <a href="#parameter-filter[tags]"><code>filter[tags]</code></a>, <a href="#parameter-filter[evaluation_changed_at]"><code>filter[evaluation_changed_at]</code></a>, <a href="#parameter-filter[muted]"><code>filter[muted]</code></a>, <a href="#parameter-filter[rule_id]"><code>filter[rule_id]</code></a>, <a href="#parameter-filter[rule_name]"><code>filter[rule_name]</code></a>, <a href="#parameter-filter[resource_type]"><code>filter[resource_type]</code></a>, <a href="#parameter-filter[@resource_id]"><code>filter[@resource_id]</code></a>, <a href="#parameter-filter[discovery_timestamp]"><code>filter[discovery_timestamp]</code></a>, <a href="#parameter-filter[evaluation]"><code>filter[evaluation]</code></a>, <a href="#parameter-filter[status]"><code>filter[status]</code></a>, <a href="#parameter-filter[vulnerability_type]"><code>filter[vulnerability_type]</code></a>, <a href="#parameter-detailed_findings"><code>detailed_findings</code></a></td>
    <td>Get a list of findings. These include both misconfigurations and identity risks.<br /><br />**Note**: To filter and return only identity risks, add the following query parameter: `?filter[tags]=dd_rule_type:ciem`<br /><br />### Filtering<br /><br />Filters can be applied by appending query parameters to the URL.<br /><br />  - Using a single filter: `?filter[attribute_key]=attribute_value`<br />  - Chaining filters: `?filter[attribute_key]=attribute_value&filter[attribute_key]=attribute_value...`<br />  - Filtering on tags: `?filter[tags]=tag_key:tag_value&filter[tags]=tag_key_2:tag_value_2`<br /><br />Here, `attribute_key` can be any of the filter keys described further below.<br /><br />Query parameters of type `integer` support comparison operators (`>`, `>=`, `<`, `<=`). This is particularly useful when filtering by `evaluation_changed_at` or `resource_discovery_timestamp`. For example: `?filter[evaluation_changed_at]=>20123123121`.<br /><br />You can also use the negation operator on strings. For example, use `filter[resource_type]=-aws*` to filter for any non-AWS resources.<br /><br />The operator must come after the equal sign. For example, to filter with the `>=` operator, add the operator after the equal sign: `filter[evaluation_changed_at]=>=1678809373257`.<br /><br />Query parameters must be only among the documented ones and with values of correct types. Duplicated query parameters (e.g. `filter[status]=low&filter[status]=info`) are not allowed.<br /><br />### Additional extension fields<br /><br />Additional extension fields are available for some findings.<br /><br />The data is available when you include the query parameter `?detailed_findings=true` in the request.<br /><br />The following fields are available for findings:<br />- `external_id`: The resource external ID related to the finding.<br />- `description`: The description and remediation steps for the finding.<br />- `datadog_link`: The Datadog relative link for the finding.<br />- `ip_addresses`: The list of private IP addresses for the resource related to the finding.<br /><br />### Response<br /><br />The response includes an array of finding objects, pagination metadata, and a count of items that match the query.<br /><br />Each finding object contains the following:<br /><br />- The finding ID that can be used in a `GetFinding` request to retrieve the full finding details.<br />- Core attributes, including status, evaluation, high-level resource details, muted state, and rule details.<br />- `evaluation_changed_at` and `resource_discovery_date` time stamps.<br />- An array of associated tags.<br /></td>
</tr>
<tr>
    <td><a href="#mute_findings"><CopyableCode code="mute_findings" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Mute or unmute findings.</td>
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
<tr id="parameter-finding_id">
    <td><CopyableCode code="finding_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the finding.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-detailed_findings">
    <td><CopyableCode code="detailed_findings" /></td>
    <td><code>boolean</code></td>
    <td>Return additional fields for some findings. (example: [true])</td>
</tr>
<tr id="parameter-filter[@resource_id]">
    <td><CopyableCode code="filter[@resource_id]" /></td>
    <td><code>string</code></td>
    <td>Return only findings for the specified resource id.</td>
</tr>
<tr id="parameter-filter[discovery_timestamp]">
    <td><CopyableCode code="filter[discovery_timestamp]" /></td>
    <td><code>string</code></td>
    <td>Return findings that were found on a specified date (Unix ms) or date range (using comparison operators). (example: &gt;=1678721573794)</td>
</tr>
<tr id="parameter-filter[evaluation]">
    <td><CopyableCode code="filter[evaluation]" /></td>
    <td><code>string</code></td>
    <td>Return only `pass` or `fail` findings.</td>
</tr>
<tr id="parameter-filter[evaluation_changed_at]">
    <td><CopyableCode code="filter[evaluation_changed_at]" /></td>
    <td><code>string</code></td>
    <td>Return findings that have changed from pass to fail or vice versa on a specified date (Unix ms) or date range (using comparison operators). (example: &gt;=1678721573794)</td>
</tr>
<tr id="parameter-filter[muted]">
    <td><CopyableCode code="filter[muted]" /></td>
    <td><code>boolean</code></td>
    <td>Set to `true` to return findings that are muted. Set to `false` to return unmuted findings.</td>
</tr>
<tr id="parameter-filter[resource_type]">
    <td><CopyableCode code="filter[resource_type]" /></td>
    <td><code>string</code></td>
    <td>Return only findings for the specified resource type.</td>
</tr>
<tr id="parameter-filter[rule_id]">
    <td><CopyableCode code="filter[rule_id]" /></td>
    <td><code>string</code></td>
    <td>Return findings for the specified rule ID.</td>
</tr>
<tr id="parameter-filter[rule_name]">
    <td><CopyableCode code="filter[rule_name]" /></td>
    <td><code>string</code></td>
    <td>Return findings for the specified rule.</td>
</tr>
<tr id="parameter-filter[status]">
    <td><CopyableCode code="filter[status]" /></td>
    <td><code>string</code></td>
    <td>Return only findings with the specified status.</td>
</tr>
<tr id="parameter-filter[tags]">
    <td><CopyableCode code="filter[tags]" /></td>
    <td><code>string</code></td>
    <td>Return findings that have these associated tags (repeatable). (example: filter[tags]=cloud_provider:aws&filter[tags]=aws_account:999999999999)</td>
</tr>
<tr id="parameter-filter[vulnerability_type]">
    <td><CopyableCode code="filter[vulnerability_type]" /></td>
    <td><code>array</code></td>
    <td>Return findings that match the selected vulnerability types (repeatable). (example: [misconfiguration])</td>
</tr>
<tr id="parameter-page[cursor]">
    <td><CopyableCode code="page[cursor]" /></td>
    <td><code>string</code></td>
    <td>Return the next page of findings pointed to by the cursor. (example: eyJhZnRlciI6IkFRQUFBWWJiaEJXQS1OY1dqUUFBQUFCQldXSmlhRUpYUVVGQlJFSktkbTlDTUdaWFRVbDNRVUUiLCJ2YWx1ZXMiOlsiY3JpdGljYWwiXX0=)</td>
</tr>
<tr id="parameter-page[limit]">
    <td><CopyableCode code="page[limit]" /></td>
    <td><code>integer (int64)</code></td>
    <td>Limit the number of findings returned. Must be &lt;= 1000. (example: 50)</td>
</tr>
<tr id="parameter-snapshot_timestamp">
    <td><CopyableCode code="snapshot_timestamp" /></td>
    <td><code>integer (int64)</code></td>
    <td>Return findings for a given snapshot of time (Unix ms). (example: 1678721573794)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_finding"
    values={[
        { label: 'get_finding', value: 'get_finding' },
        { label: 'list_findings', value: 'list_findings' }
    ]}
>
<TabItem value="get_finding">

Returns a single finding with message and resource configuration.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.findings
WHERE finding_id = '{{ finding_id }}' -- required
AND region = '{{ region }}' -- required
AND snapshot_timestamp = '{{ snapshot_timestamp }}'
;
```
</TabItem>
<TabItem value="list_findings">

Get a list of findings. These include both misconfigurations and identity risks.<br /><br />**Note**: To filter and return only identity risks, add the following query parameter: `?filter[tags]=dd_rule_type:ciem`<br /><br />### Filtering<br /><br />Filters can be applied by appending query parameters to the URL.<br /><br />  - Using a single filter: `?filter[attribute_key]=attribute_value`<br />  - Chaining filters: `?filter[attribute_key]=attribute_value&filter[attribute_key]=attribute_value...`<br />  - Filtering on tags: `?filter[tags]=tag_key:tag_value&filter[tags]=tag_key_2:tag_value_2`<br /><br />Here, `attribute_key` can be any of the filter keys described further below.<br /><br />Query parameters of type `integer` support comparison operators (`>`, `>=`, `<`, `<=`). This is particularly useful when filtering by `evaluation_changed_at` or `resource_discovery_timestamp`. For example: `?filter[evaluation_changed_at]=>20123123121`.<br /><br />You can also use the negation operator on strings. For example, use `filter[resource_type]=-aws*` to filter for any non-AWS resources.<br /><br />The operator must come after the equal sign. For example, to filter with the `>=` operator, add the operator after the equal sign: `filter[evaluation_changed_at]=>=1678809373257`.<br /><br />Query parameters must be only among the documented ones and with values of correct types. Duplicated query parameters (e.g. `filter[status]=low&filter[status]=info`) are not allowed.<br /><br />### Additional extension fields<br /><br />Additional extension fields are available for some findings.<br /><br />The data is available when you include the query parameter `?detailed_findings=true` in the request.<br /><br />The following fields are available for findings:<br />- `external_id`: The resource external ID related to the finding.<br />- `description`: The description and remediation steps for the finding.<br />- `datadog_link`: The Datadog relative link for the finding.<br />- `ip_addresses`: The list of private IP addresses for the resource related to the finding.<br /><br />### Response<br /><br />The response includes an array of finding objects, pagination metadata, and a count of items that match the query.<br /><br />Each finding object contains the following:<br /><br />- The finding ID that can be used in a `GetFinding` request to retrieve the full finding details.<br />- Core attributes, including status, evaluation, high-level resource details, muted state, and rule details.<br />- `evaluation_changed_at` and `resource_discovery_date` time stamps.<br />- An array of associated tags.<br />

```sql
SELECT
id,
attributes,
type
FROM datadog.security.findings
WHERE region = '{{ region }}' -- required
AND page[limit] = '{{ page[limit] }}'
AND snapshot_timestamp = '{{ snapshot_timestamp }}'
AND page[cursor] = '{{ page[cursor] }}'
AND filter[tags] = '{{ filter[tags] }}'
AND filter[evaluation_changed_at] = '{{ filter[evaluation_changed_at] }}'
AND filter[muted] = '{{ filter[muted] }}'
AND filter[rule_id] = '{{ filter[rule_id] }}'
AND filter[rule_name] = '{{ filter[rule_name] }}'
AND filter[resource_type] = '{{ filter[resource_type] }}'
AND filter[@resource_id] = '{{ filter[@resource_id] }}'
AND filter[discovery_timestamp] = '{{ filter[discovery_timestamp] }}'
AND filter[evaluation] = '{{ filter[evaluation] }}'
AND filter[status] = '{{ filter[status] }}'
AND filter[vulnerability_type] = '{{ filter[vulnerability_type] }}'
AND detailed_findings = '{{ detailed_findings }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="mute_findings"
    values={[
        { label: 'mute_findings', value: 'mute_findings' }
    ]}
>
<TabItem value="mute_findings">

Mute or unmute findings.

```sql
EXEC datadog.security.findings.mute_findings 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
</Tabs>
