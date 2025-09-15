--- 
title: role_permissions
hide_title: false
hide_table_of_contents: false
keywords:
  - role_permissions
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

Creates, updates, deletes, gets or lists a <code>role_permissions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>role_permissions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.role_permissions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_role_permissions"
    values={[
        { label: 'list_role_permissions', value: 'list_role_permissions' }
    ]}
>
<TabItem value="list_role_permissions">

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
    <td>ID of the permission.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes of a permission.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Permissions resource type. (default: permissions, example: permissions)</td>
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
    <td><a href="#list_role_permissions"><CopyableCode code="list_role_permissions" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-role_id"><code>role_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Returns a list of all permissions for a single role.</td>
</tr>
<tr>
    <td><a href="#add_permission_to_role"><CopyableCode code="add_permission_to_role" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-role_id"><code>role_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Adds a permission to a role.</td>
</tr>
<tr>
    <td><a href="#remove_permission_from_role"><CopyableCode code="remove_permission_from_role" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-role_id"><code>role_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Removes a permission from a role.</td>
</tr>
<tr>
    <td><a href="#remove_user_from_role"><CopyableCode code="remove_user_from_role" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-role_id"><code>role_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Removes a user from a role.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_role_permissions"
    values={[
        { label: 'list_role_permissions', value: 'list_role_permissions' }
    ]}
>
<TabItem value="list_role_permissions">

Returns a list of all permissions for a single role.

```sql
SELECT
id,
attributes,
type
FROM datadog.organization.role_permissions
WHERE role_id = '{{ role_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="add_permission_to_role"
    values={[
        { label: 'add_permission_to_role', value: 'add_permission_to_role' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="add_permission_to_role">

Adds a permission to a role.

```sql
INSERT INTO datadog.organization.role_permissions (
data__data,
role_id,
region
)
SELECT 
'{{ data }}',
'{{ role_id }}',
'{{ region }}'
RETURNING
data
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: role_permissions
  props:
    - name: role_id
      value: string
      description: Required parameter for the role_permissions resource.
    - name: region
      value: string
      description: Required parameter for the role_permissions resource.
    - name: data
      value: object
      description: |
        Relationship to permission object.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="remove_permission_from_role"
    values={[
        { label: 'remove_permission_from_role', value: 'remove_permission_from_role' },
        { label: 'remove_user_from_role', value: 'remove_user_from_role' }
    ]}
>
<TabItem value="remove_permission_from_role">

Removes a permission from a role.

```sql
DELETE FROM datadog.organization.role_permissions
WHERE role_id = '{{ role_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
<TabItem value="remove_user_from_role">

Removes a user from a role.

```sql
DELETE FROM datadog.organization.role_permissions
WHERE role_id = '{{ role_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
