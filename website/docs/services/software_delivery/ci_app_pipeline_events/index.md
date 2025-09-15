--- 
title: ci_app_pipeline_events
hide_title: false
hide_table_of_contents: false
keywords:
  - ci_app_pipeline_events
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

Creates, updates, deletes, gets or lists a <code>ci_app_pipeline_events</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>ci_app_pipeline_events</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.software_delivery.ci_app_pipeline_events" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_ciapp_pipeline_events"
    values={[
        { label: 'list_ciapp_pipeline_events', value: 'list_ciapp_pipeline_events' }
    ]}
>
<TabItem value="list_ciapp_pipeline_events">

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
    <td>Type of the event. (example: cipipeline)</td>
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
    <td><a href="#list_ciapp_pipeline_events"><CopyableCode code="list_ciapp_pipeline_events" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-filter[query]"><code>filter[query]</code></a>, <a href="#parameter-filter[from]"><code>filter[from]</code></a>, <a href="#parameter-filter[to]"><code>filter[to]</code></a>, <a href="#parameter-sort"><code>sort</code></a>, <a href="#parameter-page[cursor]"><code>page[cursor]</code></a>, <a href="#parameter-page[limit]"><code>page[limit]</code></a></td>
    <td>List endpoint returns CI Visibility pipeline events that match a [search query](https://docs.datadoghq.com/continuous_integration/explorer/search_syntax/).<br />[Results are paginated similarly to logs](https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination).<br /><br />Use this endpoint to see your latest pipeline events.</td>
</tr>
<tr>
    <td><a href="#create_ciapp_pipeline_event"><CopyableCode code="create_ciapp_pipeline_event" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Send your pipeline event to your Datadog platform over HTTP. For details about how pipeline executions are modeled and what execution types we support, see [Pipeline Data Model And Execution Types](https://docs.datadoghq.com/continuous_integration/guides/pipeline_data_model/).<br /><br />Multiple events can be sent in an array (up to 1000).<br /><br />Pipeline events can be submitted with a timestamp that is up to 18 hours in the past.</td>
</tr>
<tr>
    <td><a href="#aggregate_ciapp_pipeline_events"><CopyableCode code="aggregate_ciapp_pipeline_events" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Use this API endpoint to aggregate CI Visibility pipeline events into buckets of computed metrics and timeseries.</td>
</tr>
<tr>
    <td><a href="#search_ciapp_pipeline_events"><CopyableCode code="search_ciapp_pipeline_events" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>List endpoint returns CI Visibility pipeline events that match a [search query](https://docs.datadoghq.com/continuous_integration/explorer/search_syntax/).<br />[Results are paginated similarly to logs](https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination).<br /><br />Use this endpoint to build complex events filtering and search.</td>
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
    <td>Search query following log syntax. (example: @ci.provider.name:github @ci.pipeline.name:Pull Request Labeler)</td>
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
    defaultValue="list_ciapp_pipeline_events"
    values={[
        { label: 'list_ciapp_pipeline_events', value: 'list_ciapp_pipeline_events' }
    ]}
>
<TabItem value="list_ciapp_pipeline_events">

List endpoint returns CI Visibility pipeline events that match a [search query](https://docs.datadoghq.com/continuous_integration/explorer/search_syntax/).<br />[Results are paginated similarly to logs](https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination).<br /><br />Use this endpoint to see your latest pipeline events.

```sql
SELECT
id,
attributes,
type
FROM datadog.software_delivery.ci_app_pipeline_events
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
    defaultValue="create_ciapp_pipeline_event"
    values={[
        { label: 'create_ciapp_pipeline_event', value: 'create_ciapp_pipeline_event' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_ciapp_pipeline_event">

Send your pipeline event to your Datadog platform over HTTP. For details about how pipeline executions are modeled and what execution types we support, see [Pipeline Data Model And Execution Types](https://docs.datadoghq.com/continuous_integration/guides/pipeline_data_model/).<br /><br />Multiple events can be sent in an array (up to 1000).<br /><br />Pipeline events can be submitted with a timestamp that is up to 18 hours in the past.

```sql
INSERT INTO datadog.software_delivery.ci_app_pipeline_events (
data__data,
region
)
SELECT 
'{{ data }}',
'{{ region }}'
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: ci_app_pipeline_events
  props:
    - name: region
      value: string
      description: Required parameter for the ci_app_pipeline_events resource.
    - name: data
      value: string
      description: |
        Data of the pipeline events to create.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="aggregate_ciapp_pipeline_events"
    values={[
        { label: 'aggregate_ciapp_pipeline_events', value: 'aggregate_ciapp_pipeline_events' },
        { label: 'search_ciapp_pipeline_events', value: 'search_ciapp_pipeline_events' }
    ]}
>
<TabItem value="aggregate_ciapp_pipeline_events">

Use this API endpoint to aggregate CI Visibility pipeline events into buckets of computed metrics and timeseries.

```sql
EXEC datadog.software_delivery.ci_app_pipeline_events.aggregate_ciapp_pipeline_events 
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
<TabItem value="search_ciapp_pipeline_events">

List endpoint returns CI Visibility pipeline events that match a [search query](https://docs.datadoghq.com/continuous_integration/explorer/search_syntax/).<br />[Results are paginated similarly to logs](https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination).<br /><br />Use this endpoint to build complex events filtering and search.

```sql
EXEC datadog.software_delivery.ci_app_pipeline_events.search_ciapp_pipeline_events 
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
