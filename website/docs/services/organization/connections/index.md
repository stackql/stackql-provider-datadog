--- 
title: connections
hide_title: false
hide_table_of_contents: false
keywords:
  - connections
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

Creates, updates, deletes, gets or lists a <code>connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_org_connections"
    values={[
        { label: 'list_org_connections', value: 'list_org_connections' }
    ]}
>
<TabItem value="list_org_connections">

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
    <td><code>string (uuid)</code></td>
    <td>The unique identifier of the org connection. (example: f9ec96b0-8c8a-4b0a-9b0a-1b2c3d4e5f6a)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Org connection attributes.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>Related organizations and user.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Org connection type. (example: org_connection)</td>
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
    <td><a href="#list_org_connections"><CopyableCode code="list_org_connections" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Returns a list of org connections.</td>
</tr>
<tr>
    <td><a href="#create_org_connections"><CopyableCode code="create_org_connections" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a new org connection between the current org and a target org.</td>
</tr>
<tr>
    <td><a href="#update_org_connections"><CopyableCode code="update_org_connections" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-connection_id"><code>connection_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update an existing org connection.</td>
</tr>
<tr>
    <td><a href="#delete_org_connections"><CopyableCode code="delete_org_connections" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-connection_id"><code>connection_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete an existing org connection.</td>
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
<tr id="parameter-connection_id">
    <td><CopyableCode code="connection_id" /></td>
    <td><code>string (uuid)</code></td>
    <td>The unique identifier of the org connection.</td>
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
    defaultValue="list_org_connections"
    values={[
        { label: 'list_org_connections', value: 'list_org_connections' }
    ]}
>
<TabItem value="list_org_connections">

Returns a list of org connections.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.organization.connections
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_org_connections"
    values={[
        { label: 'create_org_connections', value: 'create_org_connections' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_org_connections">

Create a new org connection between the current org and a target org.

```sql
INSERT INTO datadog.organization.connections (
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
- name: connections
  props:
    - name: region
      value: string
      description: Required parameter for the connections resource.
    - name: data
      value: object
      description: |
        Org connection creation data.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_org_connections"
    values={[
        { label: 'update_org_connections', value: 'update_org_connections' }
    ]}
>
<TabItem value="update_org_connections">

Update an existing org connection.

```sql
UPDATE datadog.organization.connections
SET 
data__data = '{{ data }}'
WHERE 
connection_id = '{{ connection_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_org_connections"
    values={[
        { label: 'delete_org_connections', value: 'delete_org_connections' }
    ]}
>
<TabItem value="delete_org_connections">

Delete an existing org connection.

```sql
DELETE FROM datadog.organization.connections
WHERE connection_id = '{{ connection_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
