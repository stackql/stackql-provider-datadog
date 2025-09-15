--- 
title: cost_by_org
hide_title: false
hide_table_of_contents: false
keywords:
  - cost_by_org
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

Creates, updates, deletes, gets or lists a <code>cost_by_org</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cost_by_org</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.cost_by_org" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_cost_by_org"
    values={[
        { label: 'get_cost_by_org', value: 'get_cost_by_org' }
    ]}
>
<TabItem value="get_cost_by_org">

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
    <td>Cost attributes data.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of cost data. (default: cost_by_org, example: cost_by_org)</td>
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
    <td><a href="#get_cost_by_org"><CopyableCode code="get_cost_by_org" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-start_month"><code>start_month</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-end_month"><code>end_month</code></a></td>
    <td>Get cost across multi-org account.<br />Cost by org data for a given month becomes available no later than the 16th of the following month.<br />**Note:** This endpoint has been deprecated. Please use the new endpoint<br />[`/historical_cost`](https://docs.datadoghq.com/api/latest/usage-metering/#get-historical-cost-across-your-account)<br />instead.<br /><br />This endpoint is only accessible for [parent-level organizations](https://docs.datadoghq.com/account_management/multi_organization/).</td>
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
<tr id="parameter-start_month">
    <td><CopyableCode code="start_month" /></td>
    <td><code>string (date-time)</code></td>
    <td>Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for cost beginning this month.</td>
</tr>
<tr id="parameter-end_month">
    <td><CopyableCode code="end_month" /></td>
    <td><code>string (date-time)</code></td>
    <td>Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for cost ending this month.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_cost_by_org"
    values={[
        { label: 'get_cost_by_org', value: 'get_cost_by_org' }
    ]}
>
<TabItem value="get_cost_by_org">

Get cost across multi-org account.<br />Cost by org data for a given month becomes available no later than the 16th of the following month.<br />**Note:** This endpoint has been deprecated. Please use the new endpoint<br />[`/historical_cost`](https://docs.datadoghq.com/api/latest/usage-metering/#get-historical-cost-across-your-account)<br />instead.<br /><br />This endpoint is only accessible for [parent-level organizations](https://docs.datadoghq.com/account_management/multi_organization/).

```sql
SELECT
id,
attributes,
type
FROM datadog.organization.cost_by_org
WHERE start_month = '{{ start_month }}' -- required
AND region = '{{ region }}' -- required
AND end_month = '{{ end_month }}'
;
```
</TabItem>
</Tabs>
