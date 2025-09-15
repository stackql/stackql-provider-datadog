--- 
title: team_permission_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - team_permission_settings
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

Creates, updates, deletes, gets or lists a <code>team_permission_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>team_permission_settings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.team_permission_settings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_team_permission_settings"
    values={[
        { label: 'get_team_permission_settings', value: 'get_team_permission_settings' }
    ]}
>
<TabItem value="get_team_permission_settings">

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
    <td>The team permission setting's identifier (example: TeamPermission-aeadc05e-98a8-11ec-ac2c-da7ad0900001-edit)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Team permission setting attributes</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Team permission setting type (default: team_permission_settings, example: team_permission_settings)</td>
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
    <td><a href="#get_team_permission_settings"><CopyableCode code="get_team_permission_settings" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-team_id"><code>team_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get all permission settings for a given team.</td>
</tr>
<tr>
    <td><a href="#update_team_permission_setting"><CopyableCode code="update_team_permission_setting" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-team_id"><code>team_id</code></a>, <a href="#parameter-action"><code>action</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update a team permission setting for a given team.</td>
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
<tr id="parameter-action">
    <td><CopyableCode code="action" /></td>
    <td><code>string</code></td>
    <td>None</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-team_id">
    <td><CopyableCode code="team_id" /></td>
    <td><code>string</code></td>
    <td>None</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_team_permission_settings"
    values={[
        { label: 'get_team_permission_settings', value: 'get_team_permission_settings' }
    ]}
>
<TabItem value="get_team_permission_settings">

Get all permission settings for a given team.

```sql
SELECT
id,
attributes,
type
FROM datadog.organization.team_permission_settings
WHERE team_id = '{{ team_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update_team_permission_setting"
    values={[
        { label: 'update_team_permission_setting', value: 'update_team_permission_setting' }
    ]}
>
<TabItem value="update_team_permission_setting">

Update a team permission setting for a given team.

```sql
REPLACE datadog.organization.team_permission_settings
SET 
data__data = '{{ data }}'
WHERE 
team_id = '{{ team_id }}' --required
AND action = '{{ action }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>
