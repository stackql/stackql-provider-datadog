--- 
title: team_members
hide_title: false
hide_table_of_contents: false
keywords:
  - team_members
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

Creates, updates, deletes, gets or lists a <code>team_members</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>team_members</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.team_members" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_member_teams"
    values={[
        { label: 'list_member_teams', value: 'list_member_teams' }
    ]}
>
<TabItem value="list_member_teams">

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
    <td>The team's identifier (example: aeadc05e-98a8-11ec-ac2c-da7ad0900001)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Team attributes</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>Resources related to a team</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Team type (default: team, example: team)</td>
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
    <td><a href="#list_member_teams"><CopyableCode code="list_member_teams" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-super_team_id"><code>super_team_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-page[size]"><code>page[size]</code></a>, <a href="#parameter-page[number]"><code>page[number]</code></a>, <a href="#parameter-fields[team]"><code>fields[team]</code></a></td>
    <td>Get all member teams.</td>
</tr>
<tr>
    <td><a href="#add_member_team"><CopyableCode code="add_member_team" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-super_team_id"><code>super_team_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Add a member team.<br />Adds the team given by the `id` in the body as a member team of the super team.</td>
</tr>
<tr>
    <td><a href="#remove_member_team"><CopyableCode code="remove_member_team" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-super_team_id"><code>super_team_id</code></a>, <a href="#parameter-member_team_id"><code>member_team_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Remove a super team's member team identified by `member_team_id`.</td>
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
<tr id="parameter-member_team_id">
    <td><CopyableCode code="member_team_id" /></td>
    <td><code>string</code></td>
    <td>None</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-super_team_id">
    <td><CopyableCode code="super_team_id" /></td>
    <td><code>string</code></td>
    <td>None</td>
</tr>
<tr id="parameter-fields[team]">
    <td><CopyableCode code="fields[team]" /></td>
    <td><code>array</code></td>
    <td>List of fields that need to be fetched.</td>
</tr>
<tr id="parameter-page[number]">
    <td><CopyableCode code="page[number]" /></td>
    <td><code>integer (int64)</code></td>
    <td>Specific page number to return.</td>
</tr>
<tr id="parameter-page[size]">
    <td><CopyableCode code="page[size]" /></td>
    <td><code>integer (int64)</code></td>
    <td>Size for a given page. The maximum allowed value is 100.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_member_teams"
    values={[
        { label: 'list_member_teams', value: 'list_member_teams' }
    ]}
>
<TabItem value="list_member_teams">

Get all member teams.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.organization.team_members
WHERE super_team_id = '{{ super_team_id }}' -- required
AND region = '{{ region }}' -- required
AND page[size] = '{{ page[size] }}'
AND page[number] = '{{ page[number] }}'
AND fields[team] = '{{ fields[team] }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="add_member_team"
    values={[
        { label: 'add_member_team', value: 'add_member_team' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="add_member_team">

Add a member team.<br />Adds the team given by the `id` in the body as a member team of the super team.

```sql
INSERT INTO datadog.organization.team_members (
data__data,
super_team_id,
region
)
SELECT 
'{{ data }}' /* required */,
'{{ super_team_id }}',
'{{ region }}'
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: team_members
  props:
    - name: super_team_id
      value: string
      description: Required parameter for the team_members resource.
    - name: region
      value: string
      description: Required parameter for the team_members resource.
    - name: data
      value: object
      description: |
        A member team
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="remove_member_team"
    values={[
        { label: 'remove_member_team', value: 'remove_member_team' }
    ]}
>
<TabItem value="remove_member_team">

Remove a super team's member team identified by `member_team_id`.

```sql
DELETE FROM datadog.organization.team_members
WHERE super_team_id = '{{ super_team_id }}' --required
AND member_team_id = '{{ member_team_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
