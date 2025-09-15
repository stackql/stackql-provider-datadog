--- 
title: custom_frameworks
hide_title: false
hide_table_of_contents: false
keywords:
  - custom_frameworks
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

Creates, updates, deletes, gets or lists a <code>custom_frameworks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>custom_frameworks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.custom_frameworks" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_custom_framework"
    values={[
        { label: 'get_custom_framework', value: 'get_custom_framework' }
    ]}
>
<TabItem value="get_custom_framework">

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
    <td>The ID of the custom framework. (example: handle-version)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Full Framework Data Attributes.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value must be `custom_framework`. (default: custom_framework, example: custom_framework)</td>
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
    <td><a href="#get_custom_framework"><CopyableCode code="get_custom_framework" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-handle"><code>handle</code></a>, <a href="#parameter-version"><code>version</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a custom framework.</td>
</tr>
<tr>
    <td><a href="#create_custom_framework"><CopyableCode code="create_custom_framework" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a custom framework.</td>
</tr>
<tr>
    <td><a href="#update_custom_framework"><CopyableCode code="update_custom_framework" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-handle"><code>handle</code></a>, <a href="#parameter-version"><code>version</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update a custom framework.</td>
</tr>
<tr>
    <td><a href="#delete_custom_framework"><CopyableCode code="delete_custom_framework" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-handle"><code>handle</code></a>, <a href="#parameter-version"><code>version</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a custom framework.</td>
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
<tr id="parameter-handle">
    <td><CopyableCode code="handle" /></td>
    <td><code>string</code></td>
    <td>The framework handle</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-version">
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>The framework version</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_custom_framework"
    values={[
        { label: 'get_custom_framework', value: 'get_custom_framework' }
    ]}
>
<TabItem value="get_custom_framework">

Get a custom framework.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.custom_frameworks
WHERE handle = '{{ handle }}' -- required
AND version = '{{ version }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_custom_framework"
    values={[
        { label: 'create_custom_framework', value: 'create_custom_framework' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_custom_framework">

Create a custom framework.

```sql
INSERT INTO datadog.security.custom_frameworks (
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
- name: custom_frameworks
  props:
    - name: region
      value: string
      description: Required parameter for the custom_frameworks resource.
    - name: data
      value: object
      description: |
        Contains type and attributes for custom frameworks.
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update_custom_framework"
    values={[
        { label: 'update_custom_framework', value: 'update_custom_framework' }
    ]}
>
<TabItem value="update_custom_framework">

Update a custom framework.

```sql
REPLACE datadog.security.custom_frameworks
SET 
data__data = '{{ data }}'
WHERE 
handle = '{{ handle }}' --required
AND version = '{{ version }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_custom_framework"
    values={[
        { label: 'delete_custom_framework', value: 'delete_custom_framework' }
    ]}
>
<TabItem value="delete_custom_framework">

Delete a custom framework.

```sql
DELETE FROM datadog.security.custom_frameworks
WHERE handle = '{{ handle }}' --required
AND version = '{{ version }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
