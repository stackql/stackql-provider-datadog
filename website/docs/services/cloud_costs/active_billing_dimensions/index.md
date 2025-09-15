--- 
title: active_billing_dimensions
hide_title: false
hide_table_of_contents: false
keywords:
  - active_billing_dimensions
  - cloud_costs
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

Creates, updates, deletes, gets or lists an <code>active_billing_dimensions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>active_billing_dimensions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.cloud_costs.active_billing_dimensions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_active_billing_dimensions"
    values={[
        { label: 'get_active_billing_dimensions', value: 'get_active_billing_dimensions' }
    ]}
>
<TabItem value="get_active_billing_dimensions">

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
    <td>List of active billing dimensions.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of active billing dimensions data. (default: billing_dimensions)</td>
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
    <td><a href="#get_active_billing_dimensions"><CopyableCode code="get_active_billing_dimensions" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get active billing dimensions for cost attribution. Cost data for a given month becomes available no later than the 19th of the following month.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_active_billing_dimensions"
    values={[
        { label: 'get_active_billing_dimensions', value: 'get_active_billing_dimensions' }
    ]}
>
<TabItem value="get_active_billing_dimensions">

Get active billing dimensions for cost attribution. Cost data for a given month becomes available no later than the 19th of the following month.

```sql
SELECT
id,
attributes,
type
FROM datadog.cloud_costs.active_billing_dimensions
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
