--- 
title: observability_pipelines
hide_title: false
hide_table_of_contents: false
keywords:
  - observability_pipelines
  - remote_config
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

Creates, updates, deletes, gets or lists an <code>observability_pipelines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>observability_pipelines</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.remote_config.observability_pipelines" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_pipeline"
    values={[
        { label: 'get_pipeline', value: 'get_pipeline' },
        { label: 'list_pipelines', value: 'list_pipelines' }
    ]}
>
<TabItem value="get_pipeline">

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
    <td>Unique identifier for the pipeline. (example: 3fa85f64-5717-4562-b3fc-2c963f66afa6)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Defines the pipeline’s name and its components (sources, processors, and destinations).</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type identifier. For pipeline resources, this should always be set to `pipelines`. (default: pipelines, example: pipelines)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_pipelines">

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
    <td>Unique identifier for the pipeline. (example: 3fa85f64-5717-4562-b3fc-2c963f66afa6)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Defines the pipeline’s name and its components (sources, processors, and destinations).</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type identifier. For pipeline resources, this should always be set to `pipelines`. (default: pipelines, example: pipelines)</td>
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
    <td><a href="#get_pipeline"><CopyableCode code="get_pipeline" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-pipeline_id"><code>pipeline_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a specific pipeline by its ID.</td>
</tr>
<tr>
    <td><a href="#list_pipelines"><CopyableCode code="list_pipelines" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-page[size]"><code>page[size]</code></a>, <a href="#parameter-page[number]"><code>page[number]</code></a></td>
    <td>Retrieve a list of pipelines.</td>
</tr>
<tr>
    <td><a href="#create_pipeline"><CopyableCode code="create_pipeline" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a new pipeline.</td>
</tr>
<tr>
    <td><a href="#update_pipeline"><CopyableCode code="update_pipeline" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-pipeline_id"><code>pipeline_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update a pipeline.</td>
</tr>
<tr>
    <td><a href="#delete_pipeline"><CopyableCode code="delete_pipeline" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-pipeline_id"><code>pipeline_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a pipeline.</td>
</tr>
<tr>
    <td><a href="#validate_pipeline"><CopyableCode code="validate_pipeline" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Validates a pipeline configuration without creating or updating any resources.<br />Returns a list of validation errors, if any.<br /></td>
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
<tr id="parameter-pipeline_id">
    <td><CopyableCode code="pipeline_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the pipeline to delete.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_pipeline"
    values={[
        { label: 'get_pipeline', value: 'get_pipeline' },
        { label: 'list_pipelines', value: 'list_pipelines' }
    ]}
>
<TabItem value="get_pipeline">

Get a specific pipeline by its ID.

```sql
SELECT
id,
attributes,
type
FROM datadog.remote_config.observability_pipelines
WHERE pipeline_id = '{{ pipeline_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_pipelines">

Retrieve a list of pipelines.

```sql
SELECT
id,
attributes,
type
FROM datadog.remote_config.observability_pipelines
WHERE region = '{{ region }}' -- required
AND page[size] = '{{ page[size] }}'
AND page[number] = '{{ page[number] }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_pipeline"
    values={[
        { label: 'create_pipeline', value: 'create_pipeline' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_pipeline">

Create a new pipeline.

```sql
INSERT INTO datadog.remote_config.observability_pipelines (
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
- name: observability_pipelines
  props:
    - name: region
      value: string
      description: Required parameter for the observability_pipelines resource.
    - name: data
      value: object
      description: |
        Contains the the pipeline configuration.
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update_pipeline"
    values={[
        { label: 'update_pipeline', value: 'update_pipeline' }
    ]}
>
<TabItem value="update_pipeline">

Update a pipeline.

```sql
REPLACE datadog.remote_config.observability_pipelines
SET 
data__data = '{{ data }}'
WHERE 
pipeline_id = '{{ pipeline_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_pipeline"
    values={[
        { label: 'delete_pipeline', value: 'delete_pipeline' }
    ]}
>
<TabItem value="delete_pipeline">

Delete a pipeline.

```sql
DELETE FROM datadog.remote_config.observability_pipelines
WHERE pipeline_id = '{{ pipeline_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="validate_pipeline"
    values={[
        { label: 'validate_pipeline', value: 'validate_pipeline' }
    ]}
>
<TabItem value="validate_pipeline">

Validates a pipeline configuration without creating or updating any resources.<br />Returns a list of validation errors, if any.<br />

```sql
EXEC datadog.remote_config.observability_pipelines.validate_pipeline 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
</Tabs>
