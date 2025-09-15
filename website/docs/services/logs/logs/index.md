--- 
title: logs
hide_title: false
hide_table_of_contents: false
keywords:
  - logs
  - logs
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

Creates, updates, deletes, gets or lists a <code>logs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>logs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.logs.logs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_logs_get"
    values={[
        { label: 'list_logs_get', value: 'list_logs_get' }
    ]}
>
<TabItem value="list_logs_get">

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
    <td>Unique ID of the Log. (example: AAAAAWgN8Xwgr1vKDQAAAABBV2dOOFh3ZzZobm1mWXJFYTR0OA)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>JSON object containing all log attributes and their associated values.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the event. (default: log, example: log)</td>
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
    <td><a href="#list_logs_get"><CopyableCode code="list_logs_get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-filter[query]"><code>filter[query]</code></a>, <a href="#parameter-filter[indexes]"><code>filter[indexes]</code></a>, <a href="#parameter-filter[from]"><code>filter[from]</code></a>, <a href="#parameter-filter[to]"><code>filter[to]</code></a>, <a href="#parameter-filter[storage_tier]"><code>filter[storage_tier]</code></a>, <a href="#parameter-sort"><code>sort</code></a>, <a href="#parameter-page[cursor]"><code>page[cursor]</code></a>, <a href="#parameter-page[limit]"><code>page[limit]</code></a></td>
    <td>List endpoint returns logs that match a log search query.<br />[Results are paginated][1].<br /><br />Use this endpoint to search and filter your logs.<br /><br />**If you are considering archiving logs for your organization,<br />consider use of the Datadog archive capabilities instead of the log list API.<br />See [Datadog Logs Archive documentation][2].**<br /><br />[1]: /logs/guide/collect-multiple-logs-with-pagination<br />[2]: https://docs.datadoghq.com/logs/archives</td>
</tr>
<tr>
    <td><a href="#submit_log"><CopyableCode code="submit_log" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-Content-Encoding"><code>Content-Encoding</code></a>, <a href="#parameter-ddtags"><code>ddtags</code></a></td>
    <td>Send your logs to your Datadog platform over HTTP. Limits per HTTP request are:<br /><br />- Maximum content size per payload (uncompressed): 5MB<br />- Maximum size for a single log: 1MB<br />- Maximum array size if sending multiple logs in an array: 1000 entries<br /><br />Any log exceeding 1MB is accepted and truncated by Datadog:<br />- For a single log request, the API truncates the log at 1MB and returns a 2xx.<br />- For a multi-logs request, the API processes all logs, truncates only logs larger than 1MB, and returns a 2xx.<br /><br />Datadog recommends sending your logs compressed.<br />Add the `Content-Encoding: gzip` header to the request when sending compressed logs.<br />Log events can be submitted with a timestamp that is up to 18 hours in the past.<br /><br />The status codes answered by the HTTP API are:<br />- 202: Accepted: the request has been accepted for processing<br />- 400: Bad request (likely an issue in the payload formatting)<br />- 401: Unauthorized (likely a missing API Key)<br />- 403: Permission issue (likely using an invalid API Key)<br />- 408: Request Timeout, request should be retried after some time<br />- 413: Payload too large (batch is above 5MB uncompressed)<br />- 429: Too Many Requests, request should be retried after some time<br />- 500: Internal Server Error, the server encountered an unexpected condition that prevented it from fulfilling the request, request should be retried after some time<br />- 503: Service Unavailable, the server is not ready to handle the request probably because it is overloaded, request should be retried after some time</td>
</tr>
<tr>
    <td><a href="#list_logs"><CopyableCode code="list_logs" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>List endpoint returns logs that match a log search query.<br />[Results are paginated][1].<br /><br />Use this endpoint to search and filter your logs.<br /><br />**If you are considering archiving logs for your organization,<br />consider use of the Datadog archive capabilities instead of the log list API.<br />See [Datadog Logs Archive documentation][2].**<br /><br />[1]: /logs/guide/collect-multiple-logs-with-pagination<br />[2]: https://docs.datadoghq.com/logs/archives</td>
</tr>
<tr>
    <td><a href="#aggregate_logs"><CopyableCode code="aggregate_logs" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>The API endpoint to aggregate events into buckets and compute metrics and timeseries.</td>
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
<tr id="parameter-Content-Encoding">
    <td><CopyableCode code="Content-Encoding" /></td>
    <td><code>string</code></td>
    <td>HTTP header used to compress the media-type.</td>
</tr>
<tr id="parameter-ddtags">
    <td><CopyableCode code="ddtags" /></td>
    <td><code>string</code></td>
    <td>Log tags can be passed as query parameters with `text/plain` content type. (example: env:prod,user:my-user)</td>
</tr>
<tr id="parameter-filter[from]">
    <td><CopyableCode code="filter[from]" /></td>
    <td><code>string (date-time)</code></td>
    <td>Minimum timestamp for requested logs. (example: 2019-01-02T09:42:36.320Z)</td>
</tr>
<tr id="parameter-filter[indexes]">
    <td><CopyableCode code="filter[indexes]" /></td>
    <td><code>array</code></td>
    <td>For customers with multiple indexes, the indexes to search. Defaults to '*' which means all indexes (example: [main, web])</td>
</tr>
<tr id="parameter-filter[query]">
    <td><CopyableCode code="filter[query]" /></td>
    <td><code>string</code></td>
    <td>Search query following logs syntax. (example: @datacenter:us @role:db)</td>
</tr>
<tr id="parameter-filter[storage_tier]">
    <td><CopyableCode code="filter[storage_tier]" /></td>
    <td><code>string</code></td>
    <td>Specifies the storage type to be used</td>
</tr>
<tr id="parameter-filter[to]">
    <td><CopyableCode code="filter[to]" /></td>
    <td><code>string (date-time)</code></td>
    <td>Maximum timestamp for requested logs. (example: 2019-01-03T09:42:36.320Z)</td>
</tr>
<tr id="parameter-page[cursor]">
    <td><CopyableCode code="page[cursor]" /></td>
    <td><code>string</code></td>
    <td>List following results with a cursor provided in the previous query. (example: eyJzdGFydEF0IjoiQVFBQUFYS2tMS3pPbm40NGV3QUFBQUJCV0V0clRFdDZVbG8zY3pCRmNsbHJiVmxDWlEifQ==)</td>
</tr>
<tr id="parameter-page[limit]">
    <td><CopyableCode code="page[limit]" /></td>
    <td><code>integer (int32)</code></td>
    <td>Maximum number of logs in the response. (example: 25)</td>
</tr>
<tr id="parameter-sort">
    <td><CopyableCode code="sort" /></td>
    <td><code>string</code></td>
    <td>Order of logs in results.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_logs_get"
    values={[
        { label: 'list_logs_get', value: 'list_logs_get' }
    ]}
>
<TabItem value="list_logs_get">

List endpoint returns logs that match a log search query.<br />[Results are paginated][1].<br /><br />Use this endpoint to search and filter your logs.<br /><br />**If you are considering archiving logs for your organization,<br />consider use of the Datadog archive capabilities instead of the log list API.<br />See [Datadog Logs Archive documentation][2].**<br /><br />[1]: /logs/guide/collect-multiple-logs-with-pagination<br />[2]: https://docs.datadoghq.com/logs/archives

```sql
SELECT
id,
attributes,
type
FROM datadog.logs.logs
WHERE region = '{{ region }}' -- required
AND filter[query] = '{{ filter[query] }}'
AND filter[indexes] = '{{ filter[indexes] }}'
AND filter[from] = '{{ filter[from] }}'
AND filter[to] = '{{ filter[to] }}'
AND filter[storage_tier] = '{{ filter[storage_tier] }}'
AND sort = '{{ sort }}'
AND page[cursor] = '{{ page[cursor] }}'
AND page[limit] = '{{ page[limit] }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="submit_log"
    values={[
        { label: 'submit_log', value: 'submit_log' },
        { label: 'list_logs', value: 'list_logs' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="submit_log">

Send your logs to your Datadog platform over HTTP. Limits per HTTP request are:<br /><br />- Maximum content size per payload (uncompressed): 5MB<br />- Maximum size for a single log: 1MB<br />- Maximum array size if sending multiple logs in an array: 1000 entries<br /><br />Any log exceeding 1MB is accepted and truncated by Datadog:<br />- For a single log request, the API truncates the log at 1MB and returns a 2xx.<br />- For a multi-logs request, the API processes all logs, truncates only logs larger than 1MB, and returns a 2xx.<br /><br />Datadog recommends sending your logs compressed.<br />Add the `Content-Encoding: gzip` header to the request when sending compressed logs.<br />Log events can be submitted with a timestamp that is up to 18 hours in the past.<br /><br />The status codes answered by the HTTP API are:<br />- 202: Accepted: the request has been accepted for processing<br />- 400: Bad request (likely an issue in the payload formatting)<br />- 401: Unauthorized (likely a missing API Key)<br />- 403: Permission issue (likely using an invalid API Key)<br />- 408: Request Timeout, request should be retried after some time<br />- 413: Payload too large (batch is above 5MB uncompressed)<br />- 429: Too Many Requests, request should be retried after some time<br />- 500: Internal Server Error, the server encountered an unexpected condition that prevented it from fulfilling the request, request should be retried after some time<br />- 503: Service Unavailable, the server is not ready to handle the request probably because it is overloaded, request should be retried after some time

```sql
INSERT INTO datadog.logs.logs (
region,
Content-Encoding,
ddtags
)
SELECT 
'{{ region }}',
'{{ Content-Encoding }}',
'{{ ddtags }}'
;
```
</TabItem>
<TabItem value="list_logs">

List endpoint returns logs that match a log search query.<br />[Results are paginated][1].<br /><br />Use this endpoint to search and filter your logs.<br /><br />**If you are considering archiving logs for your organization,<br />consider use of the Datadog archive capabilities instead of the log list API.<br />See [Datadog Logs Archive documentation][2].**<br /><br />[1]: /logs/guide/collect-multiple-logs-with-pagination<br />[2]: https://docs.datadoghq.com/logs/archives

```sql
INSERT INTO datadog.logs.logs (
data__filter,
data__options,
data__page,
data__sort,
region
)
SELECT 
'{{ filter }}',
'{{ options }}',
'{{ page }}',
'{{ sort }}',
'{{ region }}'
RETURNING
data,
links,
meta
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: logs
  props:
    - name: region
      value: string
      description: Required parameter for the logs resource.
    - name: filter
      value: object
      description: |
        The search and filter query settings
    - name: options
      value: object
      description: |
        Global query options that are used during the query.
        Note: These fields are currently deprecated and do not affect the query results.
    - name: page
      value: object
      description: |
        Paging attributes for listing logs.
    - name: sort
      value: string
      description: |
        Sort parameters when querying logs.
      valid_values: ['timestamp', '-timestamp']
    - name: Content-Encoding
      value: string
      description: HTTP header used to compress the media-type.
    - name: ddtags
      value: string
      description: Log tags can be passed as query parameters with `text/plain` content type. (example: env:prod,user:my-user)
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="aggregate_logs"
    values={[
        { label: 'aggregate_logs', value: 'aggregate_logs' }
    ]}
>
<TabItem value="aggregate_logs">

The API endpoint to aggregate events into buckets and compute metrics and timeseries.

```sql
EXEC datadog.logs.logs.aggregate_logs 
@region='{{ region }}' --required 
@@json=
'{
"compute": "{{ compute }}", 
"filter": "{{ filter }}", 
"group_by": "{{ group_by }}", 
"options": "{{ options }}", 
"page": "{{ page }}"
}'
;
```
</TabItem>
</Tabs>
