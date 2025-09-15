--- 
title: observability_pipelines_usage
hide_title: false
hide_table_of_contents: false
keywords:
  - observability_pipelines_usage
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

Creates, updates, deletes, gets or lists an <code>observability_pipelines_usage</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>observability_pipelines_usage</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.observability_pipelines_usage" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_usage_observability_pipelines"
    values={[
        { label: 'get_usage_observability_pipelines', value: 'get_usage_observability_pipelines' }
    ]}
>
<TabItem value="get_usage_observability_pipelines">

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
    <td>Unique ID of the response.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Usage attributes data.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of usage data. (default: usage_timeseries, example: usage_timeseries)</td>
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
    <td><a href="#get_usage_observability_pipelines"><CopyableCode code="get_usage_observability_pipelines" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-start_hr"><code>start_hr</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-end_hr"><code>end_hr</code></a></td>
    <td>Get hourly usage for observability pipelines.<br />**Note:** This endpoint has been deprecated. Hourly usage data for all products is now available in the [Get hourly usage by product family API](https://docs.datadoghq.com/api/latest/usage-metering/#get-hourly-usage-by-product-family)</td>
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
<tr id="parameter-start_hr">
    <td><CopyableCode code="start_hr" /></td>
    <td><code>string (date-time)</code></td>
    <td>Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.</td>
</tr>
<tr id="parameter-end_hr">
    <td><CopyableCode code="end_hr" /></td>
    <td><code>string (date-time)</code></td>
    <td>Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_usage_observability_pipelines"
    values={[
        { label: 'get_usage_observability_pipelines', value: 'get_usage_observability_pipelines' }
    ]}
>
<TabItem value="get_usage_observability_pipelines">

Get hourly usage for observability pipelines.<br />**Note:** This endpoint has been deprecated. Hourly usage data for all products is now available in the [Get hourly usage by product family API](https://docs.datadoghq.com/api/latest/usage-metering/#get-hourly-usage-by-product-family)

```sql
SELECT
id,
attributes,
type
FROM datadog.organization.observability_pipelines_usage
WHERE start_hr = '{{ start_hr }}' -- required
AND region = '{{ region }}' -- required
AND end_hr = '{{ end_hr }}'
;
```
</TabItem>
</Tabs>
