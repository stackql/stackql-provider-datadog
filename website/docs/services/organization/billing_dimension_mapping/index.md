--- 
title: billing_dimension_mapping
hide_title: false
hide_table_of_contents: false
keywords:
  - billing_dimension_mapping
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

Creates, updates, deletes, gets or lists a <code>billing_dimension_mapping</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>billing_dimension_mapping</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.billing_dimension_mapping" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_billing_dimension_mapping"
    values={[
        { label: 'get_billing_dimension_mapping', value: 'get_billing_dimension_mapping' }
    ]}
>
<TabItem value="get_billing_dimension_mapping">

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
    <td>ID of the billing dimension.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Mapping of billing dimensions to endpoint keys.</td>
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
    <td><a href="#get_billing_dimension_mapping"><CopyableCode code="get_billing_dimension_mapping" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-filter[month]"><code>filter[month]</code></a>, <a href="#parameter-filter[view]"><code>filter[view]</code></a></td>
    <td>Get a mapping of billing dimensions to the corresponding keys for the supported usage metering public API endpoints.<br />Mapping data is updated on a monthly cadence.<br /><br />This endpoint is only accessible to [parent-level organizations](https://docs.datadoghq.com/account_management/multi_organization/).</td>
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
<tr id="parameter-filter[month]">
    <td><CopyableCode code="filter[month]" /></td>
    <td><code>string (date-time)</code></td>
    <td>Datetime in ISO-8601 format, UTC, and for mappings beginning this month. Defaults to the current month.</td>
</tr>
<tr id="parameter-filter[view]">
    <td><CopyableCode code="filter[view]" /></td>
    <td><code>string</code></td>
    <td>String to specify whether to retrieve active billing dimension mappings for the contract or for all available mappings. Allowed views have the string `active` or `all`. Defaults to `active`.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_billing_dimension_mapping"
    values={[
        { label: 'get_billing_dimension_mapping', value: 'get_billing_dimension_mapping' }
    ]}
>
<TabItem value="get_billing_dimension_mapping">

Get a mapping of billing dimensions to the corresponding keys for the supported usage metering public API endpoints.<br />Mapping data is updated on a monthly cadence.<br /><br />This endpoint is only accessible to [parent-level organizations](https://docs.datadoghq.com/account_management/multi_organization/).

```sql
SELECT
id,
attributes,
type
FROM datadog.organization.billing_dimension_mapping
WHERE region = '{{ region }}' -- required
AND filter[month] = '{{ filter[month] }}'
AND filter[view] = '{{ filter[view] }}'
;
```
</TabItem>
</Tabs>
