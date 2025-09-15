--- 
title: custom_destinations
hide_title: false
hide_table_of_contents: false
keywords:
  - custom_destinations
  - logs
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

Creates, updates, deletes, gets or lists a <code>custom_destinations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>custom_destinations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.logs.custom_destinations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_logs_custom_destination"
    values={[
        { label: 'get_logs_custom_destination', value: 'get_logs_custom_destination' },
        { label: 'list_logs_custom_destinations', value: 'list_logs_custom_destinations' }
    ]}
>
<TabItem value="get_logs_custom_destination">

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
    <td>The custom destination ID. (example: be5d7a69-d0c8-4d4d-8ee8-bba292d98139)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The attributes associated with the custom destination.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value should always be `custom_destination`. (default: custom_destination, example: custom_destination)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_logs_custom_destinations">

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
    <td>The custom destination ID. (example: be5d7a69-d0c8-4d4d-8ee8-bba292d98139)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The attributes associated with the custom destination.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value should always be `custom_destination`. (default: custom_destination, example: custom_destination)</td>
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
    <td><a href="#get_logs_custom_destination"><CopyableCode code="get_logs_custom_destination" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-custom_destination_id"><code>custom_destination_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a specific custom destination in your organization.</td>
</tr>
<tr>
    <td><a href="#list_logs_custom_destinations"><CopyableCode code="list_logs_custom_destinations" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the list of configured custom destinations in your organization with their definitions.</td>
</tr>
<tr>
    <td><a href="#create_logs_custom_destination"><CopyableCode code="create_logs_custom_destination" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Create a custom destination in your organization.</td>
</tr>
<tr>
    <td><a href="#update_logs_custom_destination"><CopyableCode code="update_logs_custom_destination" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-custom_destination_id"><code>custom_destination_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Update the given fields of a specific custom destination in your organization.</td>
</tr>
<tr>
    <td><a href="#delete_logs_custom_destination"><CopyableCode code="delete_logs_custom_destination" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-custom_destination_id"><code>custom_destination_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a specific custom destination in your organization.</td>
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
<tr id="parameter-custom_destination_id">
    <td><CopyableCode code="custom_destination_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the custom destination.</td>
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
    defaultValue="get_logs_custom_destination"
    values={[
        { label: 'get_logs_custom_destination', value: 'get_logs_custom_destination' },
        { label: 'list_logs_custom_destinations', value: 'list_logs_custom_destinations' }
    ]}
>
<TabItem value="get_logs_custom_destination">

Get a specific custom destination in your organization.

```sql
SELECT
id,
attributes,
type
FROM datadog.logs.custom_destinations
WHERE custom_destination_id = '{{ custom_destination_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_logs_custom_destinations">

Get the list of configured custom destinations in your organization with their definitions.

```sql
SELECT
id,
attributes,
type
FROM datadog.logs.custom_destinations
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_logs_custom_destination"
    values={[
        { label: 'create_logs_custom_destination', value: 'create_logs_custom_destination' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_logs_custom_destination">

Create a custom destination in your organization.

```sql
INSERT INTO datadog.logs.custom_destinations (
data__data,
region
)
SELECT 
'{{ data }}',
'{{ region }}'
RETURNING
data
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: custom_destinations
  props:
    - name: region
      value: string
      description: Required parameter for the custom_destinations resource.
    - name: data
      value: object
      description: |
        The definition of a custom destination.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_logs_custom_destination"
    values={[
        { label: 'update_logs_custom_destination', value: 'update_logs_custom_destination' }
    ]}
>
<TabItem value="update_logs_custom_destination">

Update the given fields of a specific custom destination in your organization.

```sql
UPDATE datadog.logs.custom_destinations
SET 
data__data = '{{ data }}'
WHERE 
custom_destination_id = '{{ custom_destination_id }}' --required
AND region = '{{ region }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_logs_custom_destination"
    values={[
        { label: 'delete_logs_custom_destination', value: 'delete_logs_custom_destination' }
    ]}
>
<TabItem value="delete_logs_custom_destination">

Delete a specific custom destination in your organization.

```sql
DELETE FROM datadog.logs.custom_destinations
WHERE custom_destination_id = '{{ custom_destination_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
