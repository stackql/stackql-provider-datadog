--- 
title: teams
hide_title: false
hide_table_of_contents: false
keywords:
  - teams
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

Creates, updates, deletes, gets or lists a <code>teams</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>teams</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.teams" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_team"
    values={[
        { label: 'get_team', value: 'get_team' },
        { label: 'list_teams', value: 'list_teams' }
    ]}
>
<TabItem value="get_team">

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
<TabItem value="list_teams">

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
    <td><a href="#get_team"><CopyableCode code="get_team" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-team_id"><code>team_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a single team using the team's `id`.</td>
</tr>
<tr>
    <td><a href="#list_teams"><CopyableCode code="list_teams" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-page[number]"><code>page[number]</code></a>, <a href="#parameter-page[size]"><code>page[size]</code></a>, <a href="#parameter-sort"><code>sort</code></a>, <a href="#parameter-include"><code>include</code></a>, <a href="#parameter-filter[keyword]"><code>filter[keyword]</code></a>, <a href="#parameter-filter[me]"><code>filter[me]</code></a>, <a href="#parameter-fields[team]"><code>fields[team]</code></a></td>
    <td>Get all teams.<br />Can be used to search for teams using the `filter[keyword]` and `filter[me]` query parameters.</td>
</tr>
<tr>
    <td><a href="#create_team"><CopyableCode code="create_team" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a new team.<br />User IDs passed through the `users` relationship field are added to the team.</td>
</tr>
<tr>
    <td><a href="#update_team"><CopyableCode code="update_team" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-team_id"><code>team_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update a team using the team's `id`.<br />If the `team_links` relationship is present, the associated links are updated to be in the order they appear in the array, and any existing team links not present are removed.</td>
</tr>
<tr>
    <td><a href="#delete_team"><CopyableCode code="delete_team" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-team_id"><code>team_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Remove a team using the team's `id`.</td>
</tr>
<tr>
    <td><a href="#sync_teams"><CopyableCode code="sync_teams" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>This endpoint attempts to link your existing Datadog teams with GitHub teams by matching their names.<br />It evaluates all current Datadog teams and compares them against teams in the GitHub organization<br />connected to your Datadog account, based on Datadog Team handle and GitHub Team slug<br />(lowercased and kebab-cased).<br /><br />This operation is read-only on the GitHub side, no teams will be modified or created.<br /><br />[A GitHub organization must be connected to your Datadog account](https://docs.datadoghq.com/integrations/github/),<br />and the GitHub App integrated with Datadog must have the `Members Read` permission. Matching is performed by comparing the Datadog team handle to the GitHub team slug<br />using a normalized exact match; case is ignored and spaces are removed. No modifications are made<br />to teams in GitHub. This will not create new Teams in Datadog.</td>
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
<tr id="parameter-team_id">
    <td><CopyableCode code="team_id" /></td>
    <td><code>string</code></td>
    <td>None</td>
</tr>
<tr id="parameter-fields[team]">
    <td><CopyableCode code="fields[team]" /></td>
    <td><code>array</code></td>
    <td>List of fields that need to be fetched.</td>
</tr>
<tr id="parameter-filter[keyword]">
    <td><CopyableCode code="filter[keyword]" /></td>
    <td><code>string</code></td>
    <td>Search query. Can be team name, team handle, or email of team member</td>
</tr>
<tr id="parameter-filter[me]">
    <td><CopyableCode code="filter[me]" /></td>
    <td><code>boolean</code></td>
    <td>When true, only returns teams the current user belongs to</td>
</tr>
<tr id="parameter-include">
    <td><CopyableCode code="include" /></td>
    <td><code>array</code></td>
    <td>Included related resources optionally requested. Allowed enum values: `team_links, user_team_permissions`</td>
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
<tr id="parameter-sort">
    <td><CopyableCode code="sort" /></td>
    <td><code>string</code></td>
    <td>Specifies the order of the returned teams</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_team"
    values={[
        { label: 'get_team', value: 'get_team' },
        { label: 'list_teams', value: 'list_teams' }
    ]}
>
<TabItem value="get_team">

Get a single team using the team's `id`.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.organization.teams
WHERE team_id = '{{ team_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_teams">

Get all teams.<br />Can be used to search for teams using the `filter[keyword]` and `filter[me]` query parameters.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.organization.teams
WHERE region = '{{ region }}' -- required
AND page[number] = '{{ page[number] }}'
AND page[size] = '{{ page[size] }}'
AND sort = '{{ sort }}'
AND include = '{{ include }}'
AND filter[keyword] = '{{ filter[keyword] }}'
AND filter[me] = '{{ filter[me] }}'
AND fields[team] = '{{ fields[team] }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_team"
    values={[
        { label: 'create_team', value: 'create_team' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_team">

Create a new team.<br />User IDs passed through the `users` relationship field are added to the team.

```sql
INSERT INTO datadog.organization.teams (
data__data,
region
)
SELECT 
'{{ data }}' /* required */,
'{{ region }}'
RETURNING
data
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: teams
  props:
    - name: region
      value: string
      description: Required parameter for the teams resource.
    - name: data
      value: object
      description: |
        Team create
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_team"
    values={[
        { label: 'update_team', value: 'update_team' }
    ]}
>
<TabItem value="update_team">

Update a team using the team's `id`.<br />If the `team_links` relationship is present, the associated links are updated to be in the order they appear in the array, and any existing team links not present are removed.

```sql
UPDATE datadog.organization.teams
SET 
data__data = '{{ data }}'
WHERE 
team_id = '{{ team_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_team"
    values={[
        { label: 'delete_team', value: 'delete_team' }
    ]}
>
<TabItem value="delete_team">

Remove a team using the team's `id`.

```sql
DELETE FROM datadog.organization.teams
WHERE team_id = '{{ team_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="sync_teams"
    values={[
        { label: 'sync_teams', value: 'sync_teams' }
    ]}
>
<TabItem value="sync_teams">

This endpoint attempts to link your existing Datadog teams with GitHub teams by matching their names.<br />It evaluates all current Datadog teams and compares them against teams in the GitHub organization<br />connected to your Datadog account, based on Datadog Team handle and GitHub Team slug<br />(lowercased and kebab-cased).<br /><br />This operation is read-only on the GitHub side, no teams will be modified or created.<br /><br />[A GitHub organization must be connected to your Datadog account](https://docs.datadoghq.com/integrations/github/),<br />and the GitHub App integrated with Datadog must have the `Members Read` permission. Matching is performed by comparing the Datadog team handle to the GitHub team slug<br />using a normalized exact match; case is ignored and spaces are removed. No modifications are made<br />to teams in GitHub. This will not create new Teams in Datadog.

```sql
EXEC datadog.organization.teams.sync_teams 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
</Tabs>
