--- 
title: tag_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - tag_configurations
  - metrics
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

Creates, updates, deletes, gets or lists a <code>tag_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>tag_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.metrics.tag_configurations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_tag_configuration_by_name"
    values={[
        { label: 'list_tag_configuration_by_name', value: 'list_tag_configuration_by_name' },
        { label: 'list_tag_configurations', value: 'list_tag_configurations' }
    ]}
>
<TabItem value="list_tag_configuration_by_name">

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
    <td>The metric name for this resource. (example: test.metric.latency)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Object containing the definition of a metric tag configuration attributes.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The metric tag configuration resource type. (default: manage_tags, example: manage_tags)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_tag_configurations">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
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
    <td><a href="#list_tag_configuration_by_name"><CopyableCode code="list_tag_configuration_by_name" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-metric_name"><code>metric_name</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Returns the tag configuration for the given metric name.</td>
</tr>
<tr>
    <td><a href="#list_tag_configurations"><CopyableCode code="list_tag_configurations" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-filter[configured]"><code>filter[configured]</code></a>, <a href="#parameter-filter[tags_configured]"><code>filter[tags_configured]</code></a>, <a href="#parameter-filter[metric_type]"><code>filter[metric_type]</code></a>, <a href="#parameter-filter[include_percentiles]"><code>filter[include_percentiles]</code></a>, <a href="#parameter-filter[queried]"><code>filter[queried]</code></a>, <a href="#parameter-filter[tags]"><code>filter[tags]</code></a>, <a href="#parameter-filter[related_assets]"><code>filter[related_assets]</code></a>, <a href="#parameter-window[seconds]"><code>window[seconds]</code></a>, <a href="#parameter-page[size]"><code>page[size]</code></a>, <a href="#parameter-page[cursor]"><code>page[cursor]</code></a></td>
    <td>Returns all metrics that can be configured in the Metrics Summary page or with Metrics without Limits™ (matching additional filters if specified).<br />Optionally, paginate by using the `page[cursor]` and/or `page[size]` query parameters.<br />To fetch the first page, pass in a query parameter with either a valid `page[size]` or an empty cursor like `page[cursor]=`. To fetch the next page, pass in the `next_cursor` value from the response as the new `page[cursor]` value.<br />Once the `meta.pagination.next_cursor` value is null, all pages have been retrieved.</td>
</tr>
<tr>
    <td><a href="#create_tag_configuration"><CopyableCode code="create_tag_configuration" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-metric_name"><code>metric_name</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create and define a list of queryable tag keys for an existing count/gauge/rate/distribution metric.<br />Optionally, include percentile aggregations on any distribution metric. By setting `exclude_tags_mode`<br />to true, the behavior is changed from an allow-list to a deny-list, and tags in the defined list are<br />not queryable. Can only be used with application keys of users with the `Manage Tags for Metrics`<br />permission.</td>
</tr>
<tr>
    <td><a href="#create_bulk_tags_metrics_configuration"><CopyableCode code="create_bulk_tags_metrics_configuration" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create and define a list of queryable tag keys for a set of existing count, gauge, rate, and distribution metrics.<br />Metrics are selected by passing a metric name prefix. Use the Delete method of this API path to remove tag configurations.<br />Results can be sent to a set of account email addresses, just like the same operation in the Datadog web app.<br />If multiple calls include the same metric, the last configuration applied (not by submit order) is used, do not<br />expect deterministic ordering of concurrent calls. The `exclude_tags_mode` value will set all metrics that match the prefix to<br />the same exclusion state, metric tag configurations do not support mixed inclusion and exclusion for tags on the same metric.<br />Can only be used with application keys of users with the `Manage Tags for Metrics` permission.</td>
</tr>
<tr>
    <td><a href="#update_tag_configuration"><CopyableCode code="update_tag_configuration" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-metric_name"><code>metric_name</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update the tag configuration of a metric or percentile aggregations of a distribution metric or custom aggregations<br />of a count, rate, or gauge metric. By setting `exclude_tags_mode` to true the behavior is changed<br />from an allow-list to a deny-list, and tags in the defined list will not be queryable.<br />Can only be used with application keys from users with the `Manage Tags for Metrics` permission. This endpoint requires<br />a tag configuration to be created first.</td>
</tr>
<tr>
    <td><a href="#delete_tag_configuration"><CopyableCode code="delete_tag_configuration" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-metric_name"><code>metric_name</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Deletes a metric's tag configuration. Can only be used with application<br />keys from users with the `Manage Tags for Metrics` permission.</td>
</tr>
<tr>
    <td><a href="#delete_bulk_tags_metrics_configuration"><CopyableCode code="delete_bulk_tags_metrics_configuration" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete all custom lists of queryable tag keys for a set of existing count, gauge, rate, and distribution metrics.<br />Metrics are selected by passing a metric name prefix.<br />Results can be sent to a set of account email addresses, just like the same operation in the Datadog web app.<br />Can only be used with application keys of users with the `Manage Tags for Metrics` permission.</td>
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
<tr id="parameter-metric_name">
    <td><CopyableCode code="metric_name" /></td>
    <td><code>string</code></td>
    <td>The name of the metric. (example: dist.http.endpoint.request)</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-filter[configured]">
    <td><CopyableCode code="filter[configured]" /></td>
    <td><code>boolean</code></td>
    <td>Filter custom metrics that have configured tags. (example: true)</td>
</tr>
<tr id="parameter-filter[include_percentiles]">
    <td><CopyableCode code="filter[include_percentiles]" /></td>
    <td><code>boolean</code></td>
    <td>Filter distributions with additional percentile aggregations enabled or disabled. (example: true)</td>
</tr>
<tr id="parameter-filter[metric_type]">
    <td><CopyableCode code="filter[metric_type]" /></td>
    <td><code>string</code></td>
    <td>Filter metrics by metric type.</td>
</tr>
<tr id="parameter-filter[queried]">
    <td><CopyableCode code="filter[queried]" /></td>
    <td><code>boolean</code></td>
    <td>(Preview) Filter custom metrics that have or have not been queried in the specified window[seconds]. If no window is provided or the window is less than 2 hours, a default of 2 hours will be applied. (example: true)</td>
</tr>
<tr id="parameter-filter[related_assets]">
    <td><CopyableCode code="filter[related_assets]" /></td>
    <td><code>boolean</code></td>
    <td>(Preview) Filter metrics that are used in dashboards, monitors, notebooks, SLOs. (example: true)</td>
</tr>
<tr id="parameter-filter[tags]">
    <td><CopyableCode code="filter[tags]" /></td>
    <td><code>string</code></td>
    <td>Filter metrics that have been submitted with the given tags. Supports boolean and wildcard expressions. Can only be combined with the filter[queried] filter. (example: env IN (staging,test) AND service:web)</td>
</tr>
<tr id="parameter-filter[tags_configured]">
    <td><CopyableCode code="filter[tags_configured]" /></td>
    <td><code>string</code></td>
    <td>Filter tag configurations by configured tags. (example: app)</td>
</tr>
<tr id="parameter-page[cursor]">
    <td><CopyableCode code="page[cursor]" /></td>
    <td><code>string</code></td>
    <td>String to query the next page of results. This key is provided with each valid response from the API in `meta.pagination.next_cursor`. Once the `meta.pagination.next_cursor` key is null, all pages have been retrieved.</td>
</tr>
<tr id="parameter-page[size]">
    <td><CopyableCode code="page[size]" /></td>
    <td><code>integer (int32)</code></td>
    <td>Maximum number of results returned.</td>
</tr>
<tr id="parameter-window[seconds]">
    <td><CopyableCode code="window[seconds]" /></td>
    <td><code>integer (int64)</code></td>
    <td>The number of seconds of look back (from now) to apply to a filter[tag] or filter[queried] query. Default value is 3600 (1 hour), maximum value is 2,592,000 (30 days). (example: 3600)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_tag_configuration_by_name"
    values={[
        { label: 'list_tag_configuration_by_name', value: 'list_tag_configuration_by_name' },
        { label: 'list_tag_configurations', value: 'list_tag_configurations' }
    ]}
>
<TabItem value="list_tag_configuration_by_name">

Returns the tag configuration for the given metric name.

```sql
SELECT
id,
attributes,
type
FROM datadog.metrics.tag_configurations
WHERE metric_name = '{{ metric_name }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_tag_configurations">

Returns all metrics that can be configured in the Metrics Summary page or with Metrics without Limits™ (matching additional filters if specified).<br />Optionally, paginate by using the `page[cursor]` and/or `page[size]` query parameters.<br />To fetch the first page, pass in a query parameter with either a valid `page[size]` or an empty cursor like `page[cursor]=`. To fetch the next page, pass in the `next_cursor` value from the response as the new `page[cursor]` value.<br />Once the `meta.pagination.next_cursor` value is null, all pages have been retrieved.

```sql
SELECT
*
FROM datadog.metrics.tag_configurations
WHERE region = '{{ region }}' -- required
AND filter[configured] = '{{ filter[configured] }}'
AND filter[tags_configured] = '{{ filter[tags_configured] }}'
AND filter[metric_type] = '{{ filter[metric_type] }}'
AND filter[include_percentiles] = '{{ filter[include_percentiles] }}'
AND filter[queried] = '{{ filter[queried] }}'
AND filter[tags] = '{{ filter[tags] }}'
AND filter[related_assets] = '{{ filter[related_assets] }}'
AND window[seconds] = '{{ window[seconds] }}'
AND page[size] = '{{ page[size] }}'
AND page[cursor] = '{{ page[cursor] }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_tag_configuration"
    values={[
        { label: 'create_tag_configuration', value: 'create_tag_configuration' },
        { label: 'create_bulk_tags_metrics_configuration', value: 'create_bulk_tags_metrics_configuration' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_tag_configuration">

Create and define a list of queryable tag keys for an existing count/gauge/rate/distribution metric.<br />Optionally, include percentile aggregations on any distribution metric. By setting `exclude_tags_mode`<br />to true, the behavior is changed from an allow-list to a deny-list, and tags in the defined list are<br />not queryable. Can only be used with application keys of users with the `Manage Tags for Metrics`<br />permission.

```sql
INSERT INTO datadog.metrics.tag_configurations (
data__data,
metric_name,
region
)
SELECT 
'{{ data }}' /* required */,
'{{ metric_name }}',
'{{ region }}'
RETURNING
data
;
```
</TabItem>
<TabItem value="create_bulk_tags_metrics_configuration">

Create and define a list of queryable tag keys for a set of existing count, gauge, rate, and distribution metrics.<br />Metrics are selected by passing a metric name prefix. Use the Delete method of this API path to remove tag configurations.<br />Results can be sent to a set of account email addresses, just like the same operation in the Datadog web app.<br />If multiple calls include the same metric, the last configuration applied (not by submit order) is used, do not<br />expect deterministic ordering of concurrent calls. The `exclude_tags_mode` value will set all metrics that match the prefix to<br />the same exclusion state, metric tag configurations do not support mixed inclusion and exclusion for tags on the same metric.<br />Can only be used with application keys of users with the `Manage Tags for Metrics` permission.

```sql
INSERT INTO datadog.metrics.tag_configurations (
data__data,
region
)
SELECT 
'{{ data }}' /* required */,
'{{ region }}'
RETURNING
data
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: tag_configurations
  props:
    - name: metric_name
      value: string
      description: Required parameter for the tag_configurations resource.
    - name: region
      value: string
      description: Required parameter for the tag_configurations resource.
    - name: data
      value: object
      description: |
        Request object to bulk configure tags for metrics matching the given prefix.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_tag_configuration"
    values={[
        { label: 'update_tag_configuration', value: 'update_tag_configuration' }
    ]}
>
<TabItem value="update_tag_configuration">

Update the tag configuration of a metric or percentile aggregations of a distribution metric or custom aggregations<br />of a count, rate, or gauge metric. By setting `exclude_tags_mode` to true the behavior is changed<br />from an allow-list to a deny-list, and tags in the defined list will not be queryable.<br />Can only be used with application keys from users with the `Manage Tags for Metrics` permission. This endpoint requires<br />a tag configuration to be created first.

```sql
UPDATE datadog.metrics.tag_configurations
SET 
data__data = '{{ data }}'
WHERE 
metric_name = '{{ metric_name }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_tag_configuration"
    values={[
        { label: 'delete_tag_configuration', value: 'delete_tag_configuration' },
        { label: 'delete_bulk_tags_metrics_configuration', value: 'delete_bulk_tags_metrics_configuration' }
    ]}
>
<TabItem value="delete_tag_configuration">

Deletes a metric's tag configuration. Can only be used with application<br />keys from users with the `Manage Tags for Metrics` permission.

```sql
DELETE FROM datadog.metrics.tag_configurations
WHERE metric_name = '{{ metric_name }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
<TabItem value="delete_bulk_tags_metrics_configuration">

Delete all custom lists of queryable tag keys for a set of existing count, gauge, rate, and distribution metrics.<br />Metrics are selected by passing a metric name prefix.<br />Results can be sent to a set of account email addresses, just like the same operation in the Datadog web app.<br />Can only be used with application keys of users with the `Manage Tags for Metrics` permission.

```sql
DELETE FROM datadog.metrics.tag_configurations
WHERE region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
