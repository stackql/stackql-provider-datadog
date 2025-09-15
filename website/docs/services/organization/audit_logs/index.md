--- 
title: audit_logs
hide_title: false
hide_table_of_contents: false
keywords:
  - audit_logs
  - organization
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

Creates, updates, deletes, gets or lists an <code>audit_logs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>audit_logs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.audit_logs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_audit_logs"
    values={[
        { label: 'list_audit_logs', value: 'list_audit_logs' }
    ]}
>
<TabItem value="list_audit_logs">

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
    <td>Unique ID of the event. (example: AAAAAWgN8Xwgr1vKDQAAAABBV2dOOFh3ZzZobm1mWXJFYTR0OA)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>JSON object containing all event attributes and their associated values.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the event. (default: audit, example: audit)</td>
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
    <td><a href="#list_audit_logs"><CopyableCode code="list_audit_logs" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-filter[query]"><code>filter[query]</code></a>, <a href="#parameter-filter[from]"><code>filter[from]</code></a>, <a href="#parameter-filter[to]"><code>filter[to]</code></a>, <a href="#parameter-sort"><code>sort</code></a>, <a href="#parameter-page[cursor]"><code>page[cursor]</code></a>, <a href="#parameter-page[limit]"><code>page[limit]</code></a></td>
    <td>List endpoint returns events that match a Audit Logs search query.<br />[Results are paginated][1].<br /><br />Use this endpoint to see your latest Audit Logs events.<br /><br />[1]: https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination</td>
</tr>
<tr>
    <td><a href="#search_audit_logs"><CopyableCode code="search_audit_logs" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>List endpoint returns Audit Logs events that match an Audit search query.<br />[Results are paginated][1].<br /><br />Use this endpoint to build complex Audit Logs events filtering and search.<br /><br />[1]: https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination</td>
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
<tr id="parameter-filter[from]">
    <td><CopyableCode code="filter[from]" /></td>
    <td><code>string (date-time)</code></td>
    <td>Minimum timestamp for requested events. (example: 2019-01-02T09:42:36.320Z)</td>
</tr>
<tr id="parameter-filter[query]">
    <td><CopyableCode code="filter[query]" /></td>
    <td><code>string</code></td>
    <td>Search query following Audit Logs syntax. (example: @type:session @application_id:xxxx)</td>
</tr>
<tr id="parameter-filter[to]">
    <td><CopyableCode code="filter[to]" /></td>
    <td><code>string (date-time)</code></td>
    <td>Maximum timestamp for requested events. (example: 2019-01-03T09:42:36.320Z)</td>
</tr>
<tr id="parameter-page[cursor]">
    <td><CopyableCode code="page[cursor]" /></td>
    <td><code>string</code></td>
    <td>List following results with a cursor provided in the previous query. (example: eyJzdGFydEF0IjoiQVFBQUFYS2tMS3pPbm40NGV3QUFBQUJCV0V0clRFdDZVbG8zY3pCRmNsbHJiVmxDWlEifQ==)</td>
</tr>
<tr id="parameter-page[limit]">
    <td><CopyableCode code="page[limit]" /></td>
    <td><code>integer (int32)</code></td>
    <td>Maximum number of events in the response. (example: 25)</td>
</tr>
<tr id="parameter-sort">
    <td><CopyableCode code="sort" /></td>
    <td><code>string</code></td>
    <td>Order of events in results.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_audit_logs"
    values={[
        { label: 'list_audit_logs', value: 'list_audit_logs' }
    ]}
>
<TabItem value="list_audit_logs">

List endpoint returns events that match a Audit Logs search query.<br />[Results are paginated][1].<br /><br />Use this endpoint to see your latest Audit Logs events.<br /><br />[1]: https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination

```sql
SELECT
id,
attributes,
type
FROM datadog.organization.audit_logs
WHERE region = '{{ region }}' -- required
AND filter[query] = '{{ filter[query] }}'
AND filter[from] = '{{ filter[from] }}'
AND filter[to] = '{{ filter[to] }}'
AND sort = '{{ sort }}'
AND page[cursor] = '{{ page[cursor] }}'
AND page[limit] = '{{ page[limit] }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="search_audit_logs"
    values={[
        { label: 'search_audit_logs', value: 'search_audit_logs' }
    ]}
>
<TabItem value="search_audit_logs">

List endpoint returns Audit Logs events that match an Audit search query.<br />[Results are paginated][1].<br /><br />Use this endpoint to build complex Audit Logs events filtering and search.<br /><br />[1]: https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination

```sql
EXEC datadog.organization.audit_logs.search_audit_logs 
@region='{{ region }}' --required 
@@json=
'{
"filter": "{{ filter }}", 
"options": "{{ options }}", 
"page": "{{ page }}", 
"sort": "{{ sort }}"
}'
;
```
</TabItem>
</Tabs>
