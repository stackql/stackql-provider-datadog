--- 
title: volumes
hide_title: false
hide_table_of_contents: false
keywords:
  - volumes
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

Creates, updates, deletes, gets or lists a <code>volumes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>volumes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.metrics.volumes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_volumes_by_metric_name"
    values={[
        { label: 'list_volumes_by_metric_name', value: 'list_volumes_by_metric_name' }
    ]}
>
<TabItem value="list_volumes_by_metric_name">

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
    <td><a href="#list_volumes_by_metric_name"><CopyableCode code="list_volumes_by_metric_name" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-metric_name"><code>metric_name</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>View distinct metrics volumes for the given metric name.<br /><br />Custom metrics generated in-app from other products will return `null` for ingested volumes.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_volumes_by_metric_name"
    values={[
        { label: 'list_volumes_by_metric_name', value: 'list_volumes_by_metric_name' }
    ]}
>
<TabItem value="list_volumes_by_metric_name">

View distinct metrics volumes for the given metric name.<br /><br />Custom metrics generated in-app from other products will return `null` for ingested volumes.

```sql
SELECT
*
FROM datadog.metrics.volumes
WHERE metric_name = '{{ metric_name }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
