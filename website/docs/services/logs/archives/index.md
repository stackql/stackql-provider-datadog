--- 
title: archives
hide_title: false
hide_table_of_contents: false
keywords:
  - archives
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

Creates, updates, deletes, gets or lists an <code>archives</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>archives</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.logs.archives" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_logs_archive"
    values={[
        { label: 'get_logs_archive', value: 'get_logs_archive' },
        { label: 'list_logs_archives', value: 'list_logs_archives' }
    ]}
>
<TabItem value="get_logs_archive">

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
    <td>The archive ID. (example: a2zcMylnM4OCHpYusxIi3g)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The attributes associated with the archive.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value should always be archives. (default: archives, example: archives)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_logs_archives">

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
    <td>The archive ID. (example: a2zcMylnM4OCHpYusxIi3g)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The attributes associated with the archive.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value should always be archives. (default: archives, example: archives)</td>
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
    <td><a href="#get_logs_archive"><CopyableCode code="get_logs_archive" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-archive_id"><code>archive_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a specific archive from your organization.</td>
</tr>
<tr>
    <td><a href="#list_logs_archives"><CopyableCode code="list_logs_archives" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the list of configured logs archives with their definitions.</td>
</tr>
<tr>
    <td><a href="#create_logs_archive"><CopyableCode code="create_logs_archive" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Create an archive in your organization.</td>
</tr>
<tr>
    <td><a href="#update_logs_archive"><CopyableCode code="update_logs_archive" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-archive_id"><code>archive_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Update a given archive configuration.<br /><br />**Note**: Using this method updates your archive configuration by **replacing**<br />your current configuration with the new one sent to your Datadog organization.</td>
</tr>
<tr>
    <td><a href="#delete_logs_archive"><CopyableCode code="delete_logs_archive" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-archive_id"><code>archive_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a given archive from your organization.</td>
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
<tr id="parameter-archive_id">
    <td><CopyableCode code="archive_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the archive.</td>
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
    defaultValue="get_logs_archive"
    values={[
        { label: 'get_logs_archive', value: 'get_logs_archive' },
        { label: 'list_logs_archives', value: 'list_logs_archives' }
    ]}
>
<TabItem value="get_logs_archive">

Get a specific archive from your organization.

```sql
SELECT
id,
attributes,
type
FROM datadog.logs.archives
WHERE archive_id = '{{ archive_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_logs_archives">

Get the list of configured logs archives with their definitions.

```sql
SELECT
id,
attributes,
type
FROM datadog.logs.archives
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_logs_archive"
    values={[
        { label: 'create_logs_archive', value: 'create_logs_archive' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_logs_archive">

Create an archive in your organization.

```sql
INSERT INTO datadog.logs.archives (
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
- name: archives
  props:
    - name: region
      value: string
      description: Required parameter for the archives resource.
    - name: data
      value: object
      description: |
        The definition of an archive.
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update_logs_archive"
    values={[
        { label: 'update_logs_archive', value: 'update_logs_archive' }
    ]}
>
<TabItem value="update_logs_archive">

Update a given archive configuration.<br /><br />**Note**: Using this method updates your archive configuration by **replacing**<br />your current configuration with the new one sent to your Datadog organization.

```sql
REPLACE datadog.logs.archives
SET 
data__data = '{{ data }}'
WHERE 
archive_id = '{{ archive_id }}' --required
AND region = '{{ region }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_logs_archive"
    values={[
        { label: 'delete_logs_archive', value: 'delete_logs_archive' }
    ]}
>
<TabItem value="delete_logs_archive">

Delete a given archive from your organization.

```sql
DELETE FROM datadog.logs.archives
WHERE archive_id = '{{ archive_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
