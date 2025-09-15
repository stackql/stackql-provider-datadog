--- 
title: application_keys
hide_title: false
hide_table_of_contents: false
keywords:
  - application_keys
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

Creates, updates, deletes, gets or lists an <code>application_keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>application_keys</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.application_keys" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_application_key"
    values={[
        { label: 'get_application_key', value: 'get_application_key' },
        { label: 'list_application_keys', value: 'list_application_keys' }
    ]}
>
<TabItem value="get_application_key">

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
    <td>ID of the application key.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes of a full application key.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>Resources related to the application key.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Application Keys resource type. (default: application_keys, example: application_keys)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_application_keys">

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
    <td>ID of the application key.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes of a partial application key.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>Resources related to the application key.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Application Keys resource type. (default: application_keys, example: application_keys)</td>
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
    <td><a href="#get_application_key"><CopyableCode code="get_application_key" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-app_key_id"><code>app_key_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Get an application key for your org.</td>
</tr>
<tr>
    <td><a href="#list_application_keys"><CopyableCode code="list_application_keys" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-page[size]"><code>page[size]</code></a>, <a href="#parameter-page[number]"><code>page[number]</code></a>, <a href="#parameter-sort"><code>sort</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-filter[created_at][start]"><code>filter[created_at][start]</code></a>, <a href="#parameter-filter[created_at][end]"><code>filter[created_at][end]</code></a>, <a href="#parameter-include"><code>include</code></a></td>
    <td>List all application keys available for your org</td>
</tr>
<tr>
    <td><a href="#update_application_key"><CopyableCode code="update_application_key" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-app_key_id"><code>app_key_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Edit an application key</td>
</tr>
<tr>
    <td><a href="#delete_application_key"><CopyableCode code="delete_application_key" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-app_key_id"><code>app_key_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete an application key</td>
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
<tr id="parameter-app_key_id">
    <td><CopyableCode code="app_key_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the application key.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>Filter application keys by the specified string.</td>
</tr>
<tr id="parameter-filter[created_at][end]">
    <td><CopyableCode code="filter[created_at][end]" /></td>
    <td><code>string</code></td>
    <td>Only include application keys created on or before the specified date.</td>
</tr>
<tr id="parameter-filter[created_at][start]">
    <td><CopyableCode code="filter[created_at][start]" /></td>
    <td><code>string</code></td>
    <td>Only include application keys created on or after the specified date.</td>
</tr>
<tr id="parameter-include">
    <td><CopyableCode code="include" /></td>
    <td><code>string</code></td>
    <td>Resource path for related resources to include in the response. Only `owned_by` is supported.</td>
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
    <td>Application key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_application_key"
    values={[
        { label: 'get_application_key', value: 'get_application_key' },
        { label: 'list_application_keys', value: 'list_application_keys' }
    ]}
>
<TabItem value="get_application_key">

Get an application key for your org.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.organization.application_keys
WHERE app_key_id = '{{ app_key_id }}' -- required
AND region = '{{ region }}' -- required
AND include = '{{ include }}'
;
```
</TabItem>
<TabItem value="list_application_keys">

List all application keys available for your org

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.organization.application_keys
WHERE region = '{{ region }}' -- required
AND page[size] = '{{ page[size] }}'
AND page[number] = '{{ page[number] }}'
AND sort = '{{ sort }}'
AND filter = '{{ filter }}'
AND filter[created_at][start] = '{{ filter[created_at][start] }}'
AND filter[created_at][end] = '{{ filter[created_at][end] }}'
AND include = '{{ include }}'
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_application_key"
    values={[
        { label: 'update_application_key', value: 'update_application_key' }
    ]}
>
<TabItem value="update_application_key">

Edit an application key

```sql
UPDATE datadog.organization.application_keys
SET 
data__data = '{{ data }}'
WHERE 
app_key_id = '{{ app_key_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data,
included;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_application_key"
    values={[
        { label: 'delete_application_key', value: 'delete_application_key' }
    ]}
>
<TabItem value="delete_application_key">

Delete an application key

```sql
DELETE FROM datadog.organization.application_keys
WHERE app_key_id = '{{ app_key_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
