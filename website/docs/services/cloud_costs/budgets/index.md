--- 
title: budgets
hide_title: false
hide_table_of_contents: false
keywords:
  - budgets
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

Creates, updates, deletes, gets or lists a <code>budgets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>budgets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.cloud_costs.budgets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_budget"
    values={[
        { label: 'get_budget', value: 'get_budget' },
        { label: 'list_budgets', value: 'list_budgets' }
    ]}
>
<TabItem value="get_budget">

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
    <td>The `BudgetWithEntriesData` `id`. (example: 00000000-0a0a-0a0a-aaa0-00000000000a)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The attributes of a budget.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the object, must be `budget`.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_budgets">

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
    <td>The id of the budget.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The attributes of a budget.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the object, must be `budget`.</td>
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
    <td><a href="#get_budget"><CopyableCode code="get_budget" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-budget_id"><code>budget_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a budget.</td>
</tr>
<tr>
    <td><a href="#list_budgets"><CopyableCode code="list_budgets" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>List budgets.</td>
</tr>
<tr>
    <td><a href="#upsert_budget"><CopyableCode code="upsert_budget" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Create a new budget or update an existing one.</td>
</tr>
<tr>
    <td><a href="#delete_budget"><CopyableCode code="delete_budget" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-budget_id"><code>budget_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a budget.</td>
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
<tr id="parameter-budget_id">
    <td><CopyableCode code="budget_id" /></td>
    <td><code>string</code></td>
    <td>Budget id.</td>
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
    defaultValue="get_budget"
    values={[
        { label: 'get_budget', value: 'get_budget' },
        { label: 'list_budgets', value: 'list_budgets' }
    ]}
>
<TabItem value="get_budget">

Get a budget.

```sql
SELECT
id,
attributes,
type
FROM datadog.cloud_costs.budgets
WHERE budget_id = '{{ budget_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_budgets">

List budgets.

```sql
SELECT
id,
attributes,
type
FROM datadog.cloud_costs.budgets
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="upsert_budget"
    values={[
        { label: 'upsert_budget', value: 'upsert_budget' }
    ]}
>
<TabItem value="upsert_budget">

Create a new budget or update an existing one.

```sql
REPLACE datadog.cloud_costs.budgets
SET 
data__data = '{{ data }}'
WHERE 
region = '{{ region }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_budget"
    values={[
        { label: 'delete_budget', value: 'delete_budget' }
    ]}
>
<TabItem value="delete_budget">

Delete a budget.

```sql
DELETE FROM datadog.cloud_costs.budgets
WHERE budget_id = '{{ budget_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
