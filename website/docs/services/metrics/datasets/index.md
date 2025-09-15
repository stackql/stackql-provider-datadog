--- 
title: datasets
hide_title: false
hide_table_of_contents: false
keywords:
  - datasets
  - metrics
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

Creates, updates, deletes, gets or lists a <code>datasets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>datasets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.metrics.datasets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_dataset"
    values={[
        { label: 'get_dataset', value: 'get_dataset' },
        { label: 'get_all_datasets', value: 'get_all_datasets' }
    ]}
>
<TabItem value="get_dataset">

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
    <td>Unique identifier for the dataset. (example: 123e4567-e89b-12d3-a456-426614174000)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Dataset metadata and configuration(s).</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type, always set to `dataset`. (default: dataset, example: dataset)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_all_datasets">

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
    <td>Unique identifier for the dataset. (example: 123e4567-e89b-12d3-a456-426614174000)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Dataset metadata and configuration(s).</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type, always set to `dataset`. (default: dataset, example: dataset)</td>
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
    <td><a href="#get_dataset"><CopyableCode code="get_dataset" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-dataset_id"><code>dataset_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Retrieves the dataset associated with the ID.</td>
</tr>
<tr>
    <td><a href="#get_all_datasets"><CopyableCode code="get_all_datasets" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get all datasets that have been configured for an organization.</td>
</tr>
<tr>
    <td><a href="#create_dataset"><CopyableCode code="create_dataset" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a dataset with the configurations in the request.</td>
</tr>
<tr>
    <td><a href="#update_dataset"><CopyableCode code="update_dataset" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-dataset_id"><code>dataset_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Edits the dataset associated with the ID.</td>
</tr>
<tr>
    <td><a href="#delete_dataset"><CopyableCode code="delete_dataset" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-dataset_id"><code>dataset_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Deletes the dataset associated with the ID.</td>
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
<tr id="parameter-dataset_id">
    <td><CopyableCode code="dataset_id" /></td>
    <td><code>string</code></td>
    <td>The ID of a defined dataset. (example: 0879ce27-29a1-481f-a12e-bc2a48ec9ae1)</td>
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
    defaultValue="get_dataset"
    values={[
        { label: 'get_dataset', value: 'get_dataset' },
        { label: 'get_all_datasets', value: 'get_all_datasets' }
    ]}
>
<TabItem value="get_dataset">

Retrieves the dataset associated with the ID.

```sql
SELECT
id,
attributes,
type
FROM datadog.metrics.datasets
WHERE dataset_id = '{{ dataset_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="get_all_datasets">

Get all datasets that have been configured for an organization.

```sql
SELECT
id,
attributes,
type
FROM datadog.metrics.datasets
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_dataset"
    values={[
        { label: 'create_dataset', value: 'create_dataset' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_dataset">

Create a dataset with the configurations in the request.

```sql
INSERT INTO datadog.metrics.datasets (
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
- name: datasets
  props:
    - name: region
      value: string
      description: Required parameter for the datasets resource.
    - name: data
      value: object
      description: |
        **Datasets Object Constraints**
        - **Tag limit per dataset**:
        - Each restricted dataset supports a maximum of 10 key:value pairs per product.
        - **Tag key rules per telemetry type**:
        - Only one tag key or attribute may be used to define access within a single telemetry type.
        - The same or different tag key may be used across different telemetry types.
        - **Tag value uniqueness**:
        - Tag values must be unique within a single dataset.
        - A tag value used in one dataset cannot be reused in another dataset of the same telemetry type.
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update_dataset"
    values={[
        { label: 'update_dataset', value: 'update_dataset' }
    ]}
>
<TabItem value="update_dataset">

Edits the dataset associated with the ID.

```sql
REPLACE datadog.metrics.datasets
SET 
data__data = '{{ data }}'
WHERE 
dataset_id = '{{ dataset_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_dataset"
    values={[
        { label: 'delete_dataset', value: 'delete_dataset' }
    ]}
>
<TabItem value="delete_dataset">

Deletes the dataset associated with the ID.

```sql
DELETE FROM datadog.metrics.datasets
WHERE dataset_id = '{{ dataset_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
