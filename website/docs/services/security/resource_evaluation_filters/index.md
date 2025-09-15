--- 
title: resource_evaluation_filters
hide_title: false
hide_table_of_contents: false
keywords:
  - resource_evaluation_filters
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

Creates, updates, deletes, gets or lists a <code>resource_evaluation_filters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>resource_evaluation_filters</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.resource_evaluation_filters" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_resource_evaluation_filters"
    values={[
        { label: 'get_resource_evaluation_filters', value: 'get_resource_evaluation_filters' }
    ]}
>
<TabItem value="get_resource_evaluation_filters">

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
    <td>The `data` `id`. (example: csm_resource_filter)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes of a resource filter.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Constant string to identify the request type. (example: csm_resource_filter)</td>
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
    <td><a href="#get_resource_evaluation_filters"><CopyableCode code="get_resource_evaluation_filters" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-cloud_provider"><code>cloud_provider</code></a>, <a href="#parameter-account_id"><code>account_id</code></a>, <a href="#parameter-skip_cache"><code>skip_cache</code></a></td>
    <td>List resource filters.</td>
</tr>
<tr>
    <td><a href="#update_resource_evaluation_filters"><CopyableCode code="update_resource_evaluation_filters" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update resource filters.</td>
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
<tr id="parameter-account_id">
    <td><CopyableCode code="account_id" /></td>
    <td><code>string</code></td>
    <td>Filter resource filters by cloud provider account ID. This parameter is only valid when provider is specified.</td>
</tr>
<tr id="parameter-cloud_provider">
    <td><CopyableCode code="cloud_provider" /></td>
    <td><code>string</code></td>
    <td>Filter resource filters by cloud provider (e.g. aws, gcp, azure).</td>
</tr>
<tr id="parameter-skip_cache">
    <td><CopyableCode code="skip_cache" /></td>
    <td><code>boolean</code></td>
    <td>Skip cache for resource filters.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_resource_evaluation_filters"
    values={[
        { label: 'get_resource_evaluation_filters', value: 'get_resource_evaluation_filters' }
    ]}
>
<TabItem value="get_resource_evaluation_filters">

List resource filters.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.resource_evaluation_filters
WHERE region = '{{ region }}' -- required
AND cloud_provider = '{{ cloud_provider }}'
AND account_id = '{{ account_id }}'
AND skip_cache = '{{ skip_cache }}'
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update_resource_evaluation_filters"
    values={[
        { label: 'update_resource_evaluation_filters', value: 'update_resource_evaluation_filters' }
    ]}
>
<TabItem value="update_resource_evaluation_filters">

Update resource filters.

```sql
REPLACE datadog.security.resource_evaluation_filters
SET 
data__data = '{{ data }}'
WHERE 
region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>
