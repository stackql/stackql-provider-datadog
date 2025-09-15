--- 
title: rum_retention_filters
hide_title: false
hide_table_of_contents: false
keywords:
  - rum_retention_filters
  - digital_experience
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

Creates, updates, deletes, gets or lists a <code>rum_retention_filters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>rum_retention_filters</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.digital_experience.rum_retention_filters" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_retention_filter"
    values={[
        { label: 'get_retention_filter', value: 'get_retention_filter' },
        { label: 'list_retention_filters', value: 'list_retention_filters' }
    ]}
>
<TabItem value="get_retention_filter">

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
    <td>ID of retention filter in UUID. (example: 051601eb-54a0-abc0-03f9-cc02efa18892)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The object describing attributes of a RUM retention filter.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value should always be retention_filters. (default: retention_filters, example: retention_filters)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_retention_filters">

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
    <td>ID of retention filter in UUID. (example: 051601eb-54a0-abc0-03f9-cc02efa18892)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The object describing attributes of a RUM retention filter.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value should always be retention_filters. (default: retention_filters, example: retention_filters)</td>
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
    <td><a href="#get_retention_filter"><CopyableCode code="get_retention_filter" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-app_id"><code>app_id</code></a>, <a href="#parameter-rf_id"><code>rf_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a RUM retention filter for a RUM application.</td>
</tr>
<tr>
    <td><a href="#list_retention_filters"><CopyableCode code="list_retention_filters" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-app_id"><code>app_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the list of RUM retention filters for a RUM application.</td>
</tr>
<tr>
    <td><a href="#create_retention_filter"><CopyableCode code="create_retention_filter" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-app_id"><code>app_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a RUM retention filter for a RUM application.<br />Returns RUM retention filter objects from the request body when the request is successful.</td>
</tr>
<tr>
    <td><a href="#update_retention_filter"><CopyableCode code="update_retention_filter" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-app_id"><code>app_id</code></a>, <a href="#parameter-rf_id"><code>rf_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update a RUM retention filter for a RUM application.<br />Returns RUM retention filter objects from the request body when the request is successful.</td>
</tr>
<tr>
    <td><a href="#delete_retention_filter"><CopyableCode code="delete_retention_filter" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-app_id"><code>app_id</code></a>, <a href="#parameter-rf_id"><code>rf_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a RUM retention filter for a RUM application.</td>
</tr>
<tr>
    <td><a href="#order_retention_filters"><CopyableCode code="order_retention_filters" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-app_id"><code>app_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Order RUM retention filters for a RUM application.<br />Returns RUM retention filter objects without attributes from the request body when the request is successful.</td>
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
<tr id="parameter-app_id">
    <td><CopyableCode code="app_id" /></td>
    <td><code>string</code></td>
    <td>RUM application ID.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-rf_id">
    <td><CopyableCode code="rf_id" /></td>
    <td><code>string</code></td>
    <td>Retention filter ID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_retention_filter"
    values={[
        { label: 'get_retention_filter', value: 'get_retention_filter' },
        { label: 'list_retention_filters', value: 'list_retention_filters' }
    ]}
>
<TabItem value="get_retention_filter">

Get a RUM retention filter for a RUM application.

```sql
SELECT
id,
attributes,
type
FROM datadog.digital_experience.rum_retention_filters
WHERE app_id = '{{ app_id }}' -- required
AND rf_id = '{{ rf_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_retention_filters">

Get the list of RUM retention filters for a RUM application.

```sql
SELECT
id,
attributes,
type
FROM datadog.digital_experience.rum_retention_filters
WHERE app_id = '{{ app_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_retention_filter"
    values={[
        { label: 'create_retention_filter', value: 'create_retention_filter' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_retention_filter">

Create a RUM retention filter for a RUM application.<br />Returns RUM retention filter objects from the request body when the request is successful.

```sql
INSERT INTO datadog.digital_experience.rum_retention_filters (
data__data,
app_id,
region
)
SELECT 
'{{ data }}' /* required */,
'{{ app_id }}',
'{{ region }}'
RETURNING
data
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: rum_retention_filters
  props:
    - name: app_id
      value: string
      description: Required parameter for the rum_retention_filters resource.
    - name: region
      value: string
      description: Required parameter for the rum_retention_filters resource.
    - name: data
      value: object
      description: |
        The new RUM retention filter properties to create.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_retention_filter"
    values={[
        { label: 'update_retention_filter', value: 'update_retention_filter' }
    ]}
>
<TabItem value="update_retention_filter">

Update a RUM retention filter for a RUM application.<br />Returns RUM retention filter objects from the request body when the request is successful.

```sql
UPDATE datadog.digital_experience.rum_retention_filters
SET 
data__data = '{{ data }}'
WHERE 
app_id = '{{ app_id }}' --required
AND rf_id = '{{ rf_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_retention_filter"
    values={[
        { label: 'delete_retention_filter', value: 'delete_retention_filter' }
    ]}
>
<TabItem value="delete_retention_filter">

Delete a RUM retention filter for a RUM application.

```sql
DELETE FROM datadog.digital_experience.rum_retention_filters
WHERE app_id = '{{ app_id }}' --required
AND rf_id = '{{ rf_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="order_retention_filters"
    values={[
        { label: 'order_retention_filters', value: 'order_retention_filters' }
    ]}
>
<TabItem value="order_retention_filters">

Order RUM retention filters for a RUM application.<br />Returns RUM retention filter objects without attributes from the request body when the request is successful.

```sql
EXEC datadog.digital_experience.rum_retention_filters.order_retention_filters 
@app_id='{{ app_id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
</Tabs>
