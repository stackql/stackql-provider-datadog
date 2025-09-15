--- 
title: scanning_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - scanning_groups
  - security
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

Creates, updates, deletes, gets or lists a <code>scanning_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scanning_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.scanning_groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_scanning_groups"
    values={[
        { label: 'list_scanning_groups', value: 'list_scanning_groups' }
    ]}
>
<TabItem value="list_scanning_groups">

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
    <td>ID of the configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes of the Sensitive Data configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>Relationships of the configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Sensitive Data Scanner configuration type. (default: sensitive_data_scanner_configuration, example: sensitive_data_scanner_configuration)</td>
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
    <td><a href="#list_scanning_groups"><CopyableCode code="list_scanning_groups" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>List all the Scanning groups in your organization.</td>
</tr>
<tr>
    <td><a href="#create_scanning_group"><CopyableCode code="create_scanning_group" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Create a scanning group.<br />The request MAY include a configuration relationship.<br />A rules relationship can be omitted entirely, but if it is included it MUST be<br />null or an empty array (rules cannot be created at the same time).<br />The new group will be ordered last within the configuration.</td>
</tr>
<tr>
    <td><a href="#update_scanning_group"><CopyableCode code="update_scanning_group" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-group_id"><code>group_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a>, <a href="#parameter-data__meta"><code>data__meta</code></a></td>
    <td></td>
    <td>Update a group, including the order of the rules.<br />Rules within the group are reordered by including a rules relationship. If the rules<br />relationship is present, its data section MUST contain linkages for all of the rules<br />currently in the group, and MUST NOT contain any others.</td>
</tr>
<tr>
    <td><a href="#delete_scanning_group"><CopyableCode code="delete_scanning_group" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-group_id"><code>group_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a given group.</td>
</tr>
<tr>
    <td><a href="#reorder_scanning_groups"><CopyableCode code="reorder_scanning_groups" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a>, <a href="#parameter-meta"><code>meta</code></a></td>
    <td></td>
    <td>Reorder the list of groups.</td>
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
<tr id="parameter-group_id">
    <td><CopyableCode code="group_id" /></td>
    <td><code>string</code></td>
    <td>The ID of a group of rules.</td>
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
    defaultValue="list_scanning_groups"
    values={[
        { label: 'list_scanning_groups', value: 'list_scanning_groups' }
    ]}
>
<TabItem value="list_scanning_groups">

List all the Scanning groups in your organization.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.security.scanning_groups
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_scanning_group"
    values={[
        { label: 'create_scanning_group', value: 'create_scanning_group' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_scanning_group">

Create a scanning group.<br />The request MAY include a configuration relationship.<br />A rules relationship can be omitted entirely, but if it is included it MUST be<br />null or an empty array (rules cannot be created at the same time).<br />The new group will be ordered last within the configuration.

```sql
INSERT INTO datadog.security.scanning_groups (
data__data,
data__meta,
region
)
SELECT 
'{{ data }}',
'{{ meta }}',
'{{ region }}'
RETURNING
data,
meta
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: scanning_groups
  props:
    - name: region
      value: string
      description: Required parameter for the scanning_groups resource.
    - name: data
      value: object
      description: |
        Data related to the creation of a group.
    - name: meta
      value: object
      description: |
        Meta payload containing information about the API.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_scanning_group"
    values={[
        { label: 'update_scanning_group', value: 'update_scanning_group' }
    ]}
>
<TabItem value="update_scanning_group">

Update a group, including the order of the rules.<br />Rules within the group are reordered by including a rules relationship. If the rules<br />relationship is present, its data section MUST contain linkages for all of the rules<br />currently in the group, and MUST NOT contain any others.

```sql
UPDATE datadog.security.scanning_groups
SET 
data__data = '{{ data }}',
data__meta = '{{ meta }}'
WHERE 
group_id = '{{ group_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
AND data__meta = '{{ meta }}' --required
RETURNING
meta;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_scanning_group"
    values={[
        { label: 'delete_scanning_group', value: 'delete_scanning_group' }
    ]}
>
<TabItem value="delete_scanning_group">

Delete a given group.

```sql
DELETE FROM datadog.security.scanning_groups
WHERE group_id = '{{ group_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="reorder_scanning_groups"
    values={[
        { label: 'reorder_scanning_groups', value: 'reorder_scanning_groups' }
    ]}
>
<TabItem value="reorder_scanning_groups">

Reorder the list of groups.

```sql
EXEC datadog.security.scanning_groups.reorder_scanning_groups 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}", 
"meta": "{{ meta }}"
}'
;
```
</TabItem>
</Tabs>
