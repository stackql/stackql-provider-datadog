--- 
title: on_call_user_schedule
hide_title: false
hide_table_of_contents: false
keywords:
  - on_call_user_schedule
  - service_management
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

Creates, updates, deletes, gets or lists an <code>on_call_user_schedule</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>on_call_user_schedule</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.service_management.on_call_user_schedule" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_schedule_on_call_user"
    values={[
        { label: 'get_schedule_on_call_user', value: 'get_schedule_on_call_user' }
    ]}
>
<TabItem value="get_schedule_on_call_user">

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
    <td>The `ShiftData` `id`.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes for an on-call shift.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>Relationships for an on-call shift.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Indicates that the resource is of type 'shifts'. (default: shifts, example: shifts)</td>
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
    <td><a href="#get_schedule_on_call_user"><CopyableCode code="get_schedule_on_call_user" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-schedule_id"><code>schedule_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a>, <a href="#parameter-filter[at_ts]"><code>filter[at_ts]</code></a></td>
    <td>Retrieves the user who is on-call for the specified schedule at a given time.</td>
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
<tr id="parameter-schedule_id">
    <td><CopyableCode code="schedule_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the schedule.</td>
</tr>
<tr id="parameter-filter[at_ts]">
    <td><CopyableCode code="filter[at_ts]" /></td>
    <td><code>string</code></td>
    <td>Retrieves the on-call user at the given timestamp (ISO-8601). Defaults to the current time if omitted."</td>
</tr>
<tr id="parameter-include">
    <td><CopyableCode code="include" /></td>
    <td><code>string</code></td>
    <td>Specifies related resources to include in the response as a comma-separated list. Allowed value: `user`.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_schedule_on_call_user"
    values={[
        { label: 'get_schedule_on_call_user', value: 'get_schedule_on_call_user' }
    ]}
>
<TabItem value="get_schedule_on_call_user">

Retrieves the user who is on-call for the specified schedule at a given time.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.service_management.on_call_user_schedule
WHERE schedule_id = '{{ schedule_id }}' -- required
AND region = '{{ region }}' -- required
AND include = '{{ include }}'
AND filter[at_ts] = '{{ filter[at_ts] }}'
;
```
</TabItem>
</Tabs>
