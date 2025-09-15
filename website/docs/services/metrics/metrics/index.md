--- 
title: metrics
hide_title: false
hide_table_of_contents: false
keywords:
  - metrics
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

Creates, updates, deletes, gets or lists a <code>metrics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>metrics</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.metrics.metrics" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#submit_metrics"><CopyableCode code="submit_metrics" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__series"><code>data__series</code></a></td>
    <td><a href="#parameter-Content-Encoding"><code>Content-Encoding</code></a></td>
    <td>The metrics end-point allows you to post time-series data that can be graphed on Datadog’s dashboards.<br />The maximum payload size is 500 kilobytes (512000 bytes). Compressed payloads must have a decompressed size of less than 5 megabytes (5242880 bytes).<br /><br />If you’re submitting metrics directly to the Datadog API without using DogStatsD, expect:<br /><br />- 64 bits for the timestamp<br />- 64 bits for the value<br />- 20 bytes for the metric names<br />- 50 bytes for the timeseries<br />- The full payload is approximately 100 bytes.<br /><br />Host name is one of the resources in the Resources field.</td>
</tr>
<tr>
    <td><a href="#query_scalar_data"><CopyableCode code="query_scalar_data" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Query scalar values (as seen on Query Value, Table, and Toplist widgets).<br />Multiple data sources are supported with the ability to<br />process the data using formulas and functions.</td>
</tr>
<tr>
    <td><a href="#query_timeseries_data"><CopyableCode code="query_timeseries_data" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Query timeseries data across various data sources and<br />process the data by applying formulas and functions.</td>
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
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="submit_metrics"
    values={[
        { label: 'submit_metrics', value: 'submit_metrics' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="submit_metrics">

The metrics end-point allows you to post time-series data that can be graphed on Datadog’s dashboards.<br />The maximum payload size is 500 kilobytes (512000 bytes). Compressed payloads must have a decompressed size of less than 5 megabytes (5242880 bytes).<br /><br />If you’re submitting metrics directly to the Datadog API without using DogStatsD, expect:<br /><br />- 64 bits for the timestamp<br />- 64 bits for the value<br />- 20 bytes for the metric names<br />- 50 bytes for the timeseries<br />- The full payload is approximately 100 bytes.<br /><br />Host name is one of the resources in the Resources field.

```sql
INSERT INTO datadog.metrics.metrics (
data__series,
region,
Content-Encoding
)
SELECT 
'{{ series }}' /* required */,
'{{ region }}',
'{{ Content-Encoding }}'
RETURNING
errors
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: metrics
  props:
    - name: region
      value: string
      description: Required parameter for the metrics resource.
    - name: series
      value: array
      description: |
        A list of timeseries to submit to Datadog.
    - name: Content-Encoding
      value: string
      description: HTTP header used to compress the media-type.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="query_scalar_data"
    values={[
        { label: 'query_scalar_data', value: 'query_scalar_data' },
        { label: 'query_timeseries_data', value: 'query_timeseries_data' }
    ]}
>
<TabItem value="query_scalar_data">

Query scalar values (as seen on Query Value, Table, and Toplist widgets).<br />Multiple data sources are supported with the ability to<br />process the data using formulas and functions.

```sql
EXEC datadog.metrics.metrics.query_scalar_data 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
<TabItem value="query_timeseries_data">

Query timeseries data across various data sources and<br />process the data by applying formulas and functions.

```sql
EXEC datadog.metrics.metrics.query_timeseries_data 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
</Tabs>
