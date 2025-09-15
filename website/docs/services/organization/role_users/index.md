--- 
title: role_users
hide_title: false
hide_table_of_contents: false
keywords:
  - role_users
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

Creates, updates, deletes, gets or lists a <code>role_users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>role_users</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.role_users" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_role_users"
    values={[
        { label: 'list_role_users', value: 'list_role_users' }
    ]}
>
<TabItem value="list_role_users">

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
    <td>ID of the user.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes of user object returned by the API.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>Relationships of the user object returned by the API.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Users resource type. (default: users, example: users)</td>
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
    <td><a href="#list_role_users"><CopyableCode code="list_role_users" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-role_id"><code>role_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-page[size]"><code>page[size]</code></a>, <a href="#parameter-page[number]"><code>page[number]</code></a>, <a href="#parameter-sort"><code>sort</code></a>, <a href="#parameter-filter"><code>filter</code></a></td>
    <td>Gets all users of a role.</td>
</tr>
<tr>
    <td><a href="#add_user_to_role"><CopyableCode code="add_user_to_role" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-role_id"><code>role_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Adds a user to a role.</td>
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
<tr id="parameter-role_id">
    <td><CopyableCode code="role_id" /></td>
    <td><code>string</code></td>
    <td>The unique identifier of the role.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>Filter all users by the given string. Defaults to no filtering.</td>
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
    <td>User attribute to order results by. Sort order is **ascending** by default. Sort order is **descending** if the field is prefixed by a negative sign, for example `sort=-name`. Options: `name`, `email`, `status`.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_role_users"
    values={[
        { label: 'list_role_users', value: 'list_role_users' }
    ]}
>
<TabItem value="list_role_users">

Gets all users of a role.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.organization.role_users
WHERE role_id = '{{ role_id }}' -- required
AND region = '{{ region }}' -- required
AND page[size] = '{{ page[size] }}'
AND page[number] = '{{ page[number] }}'
AND sort = '{{ sort }}'
AND filter = '{{ filter }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="add_user_to_role"
    values={[
        { label: 'add_user_to_role', value: 'add_user_to_role' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="add_user_to_role">

Adds a user to a role.

```sql
INSERT INTO datadog.organization.role_users (
data__data,
role_id,
region
)
SELECT 
'{{ data }}' /* required */,
'{{ role_id }}',
'{{ region }}'
RETURNING
data,
included,
meta
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: role_users
  props:
    - name: role_id
      value: string
      description: Required parameter for the role_users resource.
    - name: region
      value: string
      description: Required parameter for the role_users resource.
    - name: data
      value: object
      description: |
        Relationship to user object.
```
</TabItem>
</Tabs>
