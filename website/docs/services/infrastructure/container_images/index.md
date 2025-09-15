--- 
title: container_images
hide_title: false
hide_table_of_contents: false
keywords:
  - container_images
  - infrastructure
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

Creates, updates, deletes, gets or lists a <code>container_images</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>container_images</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.infrastructure.container_images" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_container_images"
    values={[
        { label: 'list_container_images', value: 'list_container_images' }
    ]}
>
<TabItem value="list_container_images">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
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
    <td><a href="#list_container_images"><CopyableCode code="list_container_images" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-filter[tags]"><code>filter[tags]</code></a>, <a href="#parameter-group_by"><code>group_by</code></a>, <a href="#parameter-sort"><code>sort</code></a>, <a href="#parameter-page[size]"><code>page[size]</code></a>, <a href="#parameter-page[cursor]"><code>page[cursor]</code></a></td>
    <td>Get all Container Images for your organization.</td>
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
<tr id="parameter-filter[tags]">
    <td><CopyableCode code="filter[tags]" /></td>
    <td><code>string</code></td>
    <td>Comma-separated list of tags to filter Container Images by. (example: short_image:redis,status:running)</td>
</tr>
<tr id="parameter-group_by">
    <td><CopyableCode code="group_by" /></td>
    <td><code>string</code></td>
    <td>Comma-separated list of tags to group Container Images by. (example: registry,image_tags)</td>
</tr>
<tr id="parameter-page[cursor]">
    <td><CopyableCode code="page[cursor]" /></td>
    <td><code>string</code></td>
    <td>String to query the next page of results. This key is provided with each valid response from the API in `meta.pagination.next_cursor`.</td>
</tr>
<tr id="parameter-page[size]">
    <td><CopyableCode code="page[size]" /></td>
    <td><code>integer (int32)</code></td>
    <td>Maximum number of results returned.</td>
</tr>
<tr id="parameter-sort">
    <td><CopyableCode code="sort" /></td>
    <td><code>string</code></td>
    <td>Attribute to sort Container Images by. (example: container_count)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_container_images"
    values={[
        { label: 'list_container_images', value: 'list_container_images' }
    ]}
>
<TabItem value="list_container_images">

Get all Container Images for your organization.

```sql
SELECT
*
FROM datadog.infrastructure.container_images
WHERE region = '{{ region }}' -- required
AND filter[tags] = '{{ filter[tags] }}'
AND group_by = '{{ group_by }}'
AND sort = '{{ sort }}'
AND page[size] = '{{ page[size] }}'
AND page[cursor] = '{{ page[cursor] }}'
;
```
</TabItem>
</Tabs>
