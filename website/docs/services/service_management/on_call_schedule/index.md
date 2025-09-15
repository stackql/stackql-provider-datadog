--- 
title: on_call_schedule
hide_title: false
hide_table_of_contents: false
keywords:
  - on_call_schedule
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

Creates, updates, deletes, gets or lists an <code>on_call_schedule</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>on_call_schedule</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.service_management.on_call_schedule" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_on_call_schedule"
    values={[
        { label: 'get_on_call_schedule', value: 'get_on_call_schedule' }
    ]}
>
<TabItem value="get_on_call_schedule">

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
    <td>The schedule's unique identifier. (example: 3653d3c6-0c75-11ea-ad28-fb5701eabc7d)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Provides core properties of a schedule object such as its name and time zone.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>Groups the relationships for a schedule object, referencing layers and teams.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Schedules resource type. (default: schedules, example: schedules)</td>
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
    <td><a href="#get_on_call_schedule"><CopyableCode code="get_on_call_schedule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-schedule_id"><code>schedule_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Get an On-Call schedule</td>
</tr>
<tr>
    <td><a href="#create_on_call_schedule"><CopyableCode code="create_on_call_schedule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Create a new On-Call schedule</td>
</tr>
<tr>
    <td><a href="#update_on_call_schedule"><CopyableCode code="update_on_call_schedule" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-schedule_id"><code>schedule_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Update a new On-Call schedule</td>
</tr>
<tr>
    <td><a href="#delete_on_call_schedule"><CopyableCode code="delete_on_call_schedule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-schedule_id"><code>schedule_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete an On-Call schedule</td>
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
    <td>The ID of the schedule</td>
</tr>
<tr id="parameter-include">
    <td><CopyableCode code="include" /></td>
    <td><code>string</code></td>
    <td>Comma-separated list of included relationships to be returned. Allowed values: `teams`, `layers`, `layers.members`, `layers.members.user`.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_on_call_schedule"
    values={[
        { label: 'get_on_call_schedule', value: 'get_on_call_schedule' }
    ]}
>
<TabItem value="get_on_call_schedule">

Get an On-Call schedule

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.service_management.on_call_schedule
WHERE schedule_id = '{{ schedule_id }}' -- required
AND region = '{{ region }}' -- required
AND include = '{{ include }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_on_call_schedule"
    values={[
        { label: 'create_on_call_schedule', value: 'create_on_call_schedule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_on_call_schedule">

Create a new On-Call schedule

```sql
INSERT INTO datadog.service_management.on_call_schedule (
data__data,
region,
include
)
SELECT 
'{{ data }}' /* required */,
'{{ region }}',
'{{ include }}'
RETURNING
data,
included
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: on_call_schedule
  props:
    - name: region
      value: string
      description: Required parameter for the on_call_schedule resource.
    - name: data
      value: object
      description: |
        The core data wrapper for creating a schedule, encompassing attributes, relationships, and the resource type.
    - name: include
      value: string
      description: Comma-separated list of included relationships to be returned. Allowed values: `teams`, `layers`, `layers.members`, `layers.members.user`.
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update_on_call_schedule"
    values={[
        { label: 'update_on_call_schedule', value: 'update_on_call_schedule' }
    ]}
>
<TabItem value="update_on_call_schedule">

Update a new On-Call schedule

```sql
REPLACE datadog.service_management.on_call_schedule
SET 
data__data = '{{ data }}'
WHERE 
schedule_id = '{{ schedule_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
AND include = '{{ include}}'
RETURNING
data,
included;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_on_call_schedule"
    values={[
        { label: 'delete_on_call_schedule', value: 'delete_on_call_schedule' }
    ]}
>
<TabItem value="delete_on_call_schedule">

Delete an On-Call schedule

```sql
DELETE FROM datadog.service_management.on_call_schedule
WHERE schedule_id = '{{ schedule_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
