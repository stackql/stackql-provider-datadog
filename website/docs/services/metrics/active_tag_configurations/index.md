--- 
title: active_tag_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - active_tag_configurations
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

Creates, updates, deletes, gets or lists an <code>active_tag_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>active_tag_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.metrics.active_tag_configurations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_active_metric_configurations"
    values={[
        { label: 'list_active_metric_configurations', value: 'list_active_metric_configurations' }
    ]}
>
<TabItem value="list_active_metric_configurations">

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
    <td>Object containing the definition of a metric's actively queried tags and aggregations.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The metric actively queried configuration resource type. (default: actively_queried_configurations, example: actively_queried_configurations)</td>
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
    <td><a href="#list_active_metric_configurations"><CopyableCode code="list_active_metric_configurations" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-metric_name"><code>metric_name</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-window[seconds]"><code>window[seconds]</code></a></td>
    <td>List tags and aggregations that are actively queried on dashboards, notebooks, monitors, the Metrics Explorer, and using the API for a given metric name.</td>
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
<tr id="parameter-window[seconds]">
    <td><CopyableCode code="window[seconds]" /></td>
    <td><code>integer (int64)</code></td>
    <td>The number of seconds of look back (from now). Default value is 604,800 (1 week), minimum value is 7200 (2 hours), maximum value is 2,630,000 (1 month). (example: 7200)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_active_metric_configurations"
    values={[
        { label: 'list_active_metric_configurations', value: 'list_active_metric_configurations' }
    ]}
>
<TabItem value="list_active_metric_configurations">

List tags and aggregations that are actively queried on dashboards, notebooks, monitors, the Metrics Explorer, and using the API for a given metric name.

```sql
SELECT
id,
attributes,
type
FROM datadog.metrics.active_tag_configurations
WHERE metric_name = '{{ metric_name }}' -- required
AND region = '{{ region }}' -- required
AND window[seconds] = '{{ window[seconds] }}'
;
```
</TabItem>
</Tabs>
