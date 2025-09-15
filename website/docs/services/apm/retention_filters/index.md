--- 
title: retention_filters
hide_title: false
hide_table_of_contents: false
keywords:
  - retention_filters
  - apm
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

Creates, updates, deletes, gets or lists a <code>retention_filters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>retention_filters</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.apm.retention_filters" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_apm_retention_filter"
    values={[
        { label: 'get_apm_retention_filter', value: 'get_apm_retention_filter' },
        { label: 'list_apm_retention_filters', value: 'list_apm_retention_filters' }
    ]}
>
<TabItem value="get_apm_retention_filter">

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
    <td>The ID of the retention filter. (example: 7RBOb7dLSYWI01yc3pIH8w)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The attributes of the retention filter.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. (default: apm_retention_filter, example: apm_retention_filter)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_apm_retention_filters">

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
    <td>The ID of the retention filter. (example: 7RBOb7dLSYWI01yc3pIH8w)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The attributes of the retention filter.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. (default: apm_retention_filter, example: apm_retention_filter)</td>
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
    <td><a href="#get_apm_retention_filter"><CopyableCode code="get_apm_retention_filter" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-filter_id"><code>filter_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get an APM retention filter.</td>
</tr>
<tr>
    <td><a href="#list_apm_retention_filters"><CopyableCode code="list_apm_retention_filters" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the list of APM retention filters.</td>
</tr>
<tr>
    <td><a href="#create_apm_retention_filter"><CopyableCode code="create_apm_retention_filter" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a retention filter to index spans in your organization.<br />Returns the retention filter definition when the request is successful.<br /><br />Default filters with types spans-errors-sampling-processor and spans-appsec-sampling-processor cannot be created.</td>
</tr>
<tr>
    <td><a href="#update_apm_retention_filter"><CopyableCode code="update_apm_retention_filter" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-filter_id"><code>filter_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update a retention filter from your organization.<br /><br />Default filters (filters with types spans-errors-sampling-processor and spans-appsec-sampling-processor) cannot be renamed or removed.</td>
</tr>
<tr>
    <td><a href="#delete_apm_retention_filter"><CopyableCode code="delete_apm_retention_filter" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-filter_id"><code>filter_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a specific retention filter from your organization.<br /><br />Default filters with types spans-errors-sampling-processor and spans-appsec-sampling-processor cannot be deleted.</td>
</tr>
<tr>
    <td><a href="#reorder_apm_retention_filters"><CopyableCode code="reorder_apm_retention_filters" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Re-order the execution order of retention filters.</td>
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
<tr id="parameter-filter_id">
    <td><CopyableCode code="filter_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the retention filter.</td>
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
    defaultValue="get_apm_retention_filter"
    values={[
        { label: 'get_apm_retention_filter', value: 'get_apm_retention_filter' },
        { label: 'list_apm_retention_filters', value: 'list_apm_retention_filters' }
    ]}
>
<TabItem value="get_apm_retention_filter">

Get an APM retention filter.

```sql
SELECT
id,
attributes,
type
FROM datadog.apm.retention_filters
WHERE filter_id = '{{ filter_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_apm_retention_filters">

Get the list of APM retention filters.

```sql
SELECT
id,
attributes,
type
FROM datadog.apm.retention_filters
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_apm_retention_filter"
    values={[
        { label: 'create_apm_retention_filter', value: 'create_apm_retention_filter' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_apm_retention_filter">

Create a retention filter to index spans in your organization.<br />Returns the retention filter definition when the request is successful.<br /><br />Default filters with types spans-errors-sampling-processor and spans-appsec-sampling-processor cannot be created.

```sql
INSERT INTO datadog.apm.retention_filters (
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
- name: retention_filters
  props:
    - name: region
      value: string
      description: Required parameter for the retention_filters resource.
    - name: data
      value: object
      description: |
        The body of the retention filter to be created.
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update_apm_retention_filter"
    values={[
        { label: 'update_apm_retention_filter', value: 'update_apm_retention_filter' }
    ]}
>
<TabItem value="update_apm_retention_filter">

Update a retention filter from your organization.<br /><br />Default filters (filters with types spans-errors-sampling-processor and spans-appsec-sampling-processor) cannot be renamed or removed.

```sql
REPLACE datadog.apm.retention_filters
SET 
data__data = '{{ data }}'
WHERE 
filter_id = '{{ filter_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_apm_retention_filter"
    values={[
        { label: 'delete_apm_retention_filter', value: 'delete_apm_retention_filter' }
    ]}
>
<TabItem value="delete_apm_retention_filter">

Delete a specific retention filter from your organization.<br /><br />Default filters with types spans-errors-sampling-processor and spans-appsec-sampling-processor cannot be deleted.

```sql
DELETE FROM datadog.apm.retention_filters
WHERE filter_id = '{{ filter_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="reorder_apm_retention_filters"
    values={[
        { label: 'reorder_apm_retention_filters', value: 'reorder_apm_retention_filters' }
    ]}
>
<TabItem value="reorder_apm_retention_filters">

Re-order the execution order of retention filters.

```sql
EXEC datadog.apm.retention_filters.reorder_apm_retention_filters 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
</Tabs>
