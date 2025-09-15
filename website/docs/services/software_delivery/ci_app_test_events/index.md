--- 
title: ci_app_test_events
hide_title: false
hide_table_of_contents: false
keywords:
  - ci_app_test_events
  - software_delivery
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

Creates, updates, deletes, gets or lists a <code>ci_app_test_events</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>ci_app_test_events</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.software_delivery.ci_app_test_events" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_ciapp_test_events"
    values={[
        { label: 'list_ciapp_test_events', value: 'list_ciapp_test_events' }
    ]}
>
<TabItem value="list_ciapp_test_events">

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
    <td>Type of the event. (example: citest)</td>
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
    <td><a href="#list_ciapp_test_events"><CopyableCode code="list_ciapp_test_events" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-filter[query]"><code>filter[query]</code></a>, <a href="#parameter-filter[from]"><code>filter[from]</code></a>, <a href="#parameter-filter[to]"><code>filter[to]</code></a>, <a href="#parameter-sort"><code>sort</code></a>, <a href="#parameter-page[cursor]"><code>page[cursor]</code></a>, <a href="#parameter-page[limit]"><code>page[limit]</code></a></td>
    <td>List endpoint returns CI Visibility test events that match a [search query](https://docs.datadoghq.com/continuous_integration/explorer/search_syntax/).<br />[Results are paginated similarly to logs](https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination).<br /><br />Use this endpoint to see your latest test events.</td>
</tr>
<tr>
    <td><a href="#search_ciapp_test_events"><CopyableCode code="search_ciapp_test_events" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>List endpoint returns CI Visibility test events that match a [search query](https://docs.datadoghq.com/continuous_integration/explorer/search_syntax/).<br />[Results are paginated similarly to logs](https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination).<br /><br />Use this endpoint to build complex events filtering and search.</td>
</tr>
<tr>
    <td><a href="#aggregate_ciapp_test_events"><CopyableCode code="aggregate_ciapp_test_events" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>The API endpoint to aggregate CI Visibility test events into buckets of computed metrics and timeseries.</td>
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
    <td>Search query following log syntax. (example: @test.name:test_foo @test.suite:github.com/DataDog/dd-go/model)</td>
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
    defaultValue="list_ciapp_test_events"
    values={[
        { label: 'list_ciapp_test_events', value: 'list_ciapp_test_events' }
    ]}
>
<TabItem value="list_ciapp_test_events">

List endpoint returns CI Visibility test events that match a [search query](https://docs.datadoghq.com/continuous_integration/explorer/search_syntax/).<br />[Results are paginated similarly to logs](https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination).<br /><br />Use this endpoint to see your latest test events.

```sql
SELECT
id,
attributes,
type
FROM datadog.software_delivery.ci_app_test_events
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


## `INSERT` examples

<Tabs
    defaultValue="search_ciapp_test_events"
    values={[
        { label: 'search_ciapp_test_events', value: 'search_ciapp_test_events' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="search_ciapp_test_events">

List endpoint returns CI Visibility test events that match a [search query](https://docs.datadoghq.com/continuous_integration/explorer/search_syntax/).<br />[Results are paginated similarly to logs](https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination).<br /><br />Use this endpoint to build complex events filtering and search.

```sql
INSERT INTO datadog.software_delivery.ci_app_test_events (
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
- name: ci_app_test_events
  props:
    - name: region
      value: string
      description: Required parameter for the ci_app_test_events resource.
    - name: filter
      value: object
      description: |
        The search and filter query settings.
    - name: options
      value: object
      description: |
        Global query options that are used during the query.
        Only supply timezone or time offset, not both. Otherwise, the query fails.
    - name: page
      value: object
      description: |
        Paging attributes for listing events.
    - name: sort
      value: string
      description: |
        Sort parameters when querying events.
      valid_values: ['timestamp', '-timestamp']
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="aggregate_ciapp_test_events"
    values={[
        { label: 'aggregate_ciapp_test_events', value: 'aggregate_ciapp_test_events' }
    ]}
>
<TabItem value="aggregate_ciapp_test_events">

The API endpoint to aggregate CI Visibility test events into buckets of computed metrics and timeseries.

```sql
EXEC datadog.software_delivery.ci_app_test_events.aggregate_ciapp_test_events 
@region='{{ region }}' --required 
@@json=
'{
"compute": "{{ compute }}", 
"filter": "{{ filter }}", 
"group_by": "{{ group_by }}", 
"options": "{{ options }}"
}'
;
```
</TabItem>
</Tabs>
