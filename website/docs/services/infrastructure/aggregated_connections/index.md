--- 
title: aggregated_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - aggregated_connections
  - infrastructure
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

Creates, updates, deletes, gets or lists an <code>aggregated_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>aggregated_connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.infrastructure.aggregated_connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_aggregated_connections"
    values={[
        { label: 'get_aggregated_connections', value: 'get_aggregated_connections' }
    ]}
>
<TabItem value="get_aggregated_connections">

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
    <td>A unique identifier for the aggregated connection based on the group by values.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes for an aggregated connection.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Aggregated connection resource type. (default: aggregated_connection)</td>
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
    <td><a href="#get_aggregated_connections"><CopyableCode code="get_aggregated_connections" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-from"><code>from</code></a>, <a href="#parameter-to"><code>to</code></a>, <a href="#parameter-group_by"><code>group_by</code></a>, <a href="#parameter-tags"><code>tags</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Get all aggregated connections.</td>
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
<tr id="parameter-from">
    <td><CopyableCode code="from" /></td>
    <td><code>integer (int64)</code></td>
    <td>Unix timestamp (number of seconds since epoch) of the start of the query window. If not provided, the start of the query window is 15 minutes before the `to` timestamp. If neither `from` nor `to` are provided, the query window is `[now - 15m, now]`.</td>
</tr>
<tr id="parameter-group_by">
    <td><CopyableCode code="group_by" /></td>
    <td><code>string</code></td>
    <td>Comma-separated list of fields to group connections by. The maximum number of group_by(s) is 10.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of connections to be returned. The maximum value is 7500. The default is 100.</td>
</tr>
<tr id="parameter-tags">
    <td><CopyableCode code="tags" /></td>
    <td><code>string</code></td>
    <td>Comma-separated list of tags to filter connections by.</td>
</tr>
<tr id="parameter-to">
    <td><CopyableCode code="to" /></td>
    <td><code>integer (int64)</code></td>
    <td>Unix timestamp (number of seconds since epoch) of the end of the query window. If not provided, the end of the query window is the current time. If neither `from` nor `to` are provided, the query window is `[now - 15m, now]`.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_aggregated_connections"
    values={[
        { label: 'get_aggregated_connections', value: 'get_aggregated_connections' }
    ]}
>
<TabItem value="get_aggregated_connections">

Get all aggregated connections.

```sql
SELECT
id,
attributes,
type
FROM datadog.infrastructure.aggregated_connections
WHERE region = '{{ region }}' -- required
AND from = '{{ from }}'
AND to = '{{ to }}'
AND group_by = '{{ group_by }}'
AND tags = '{{ tags }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>
