--- 
title: apis
hide_title: false
hide_table_of_contents: false
keywords:
  - apis
  - catalog
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

Creates, updates, deletes, gets or lists an <code>apis</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>apis</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.catalog.apis" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_apis"
    values={[
        { label: 'list_apis', value: 'list_apis' }
    ]}
>
<TabItem value="list_apis">

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
    <td><code>string (uuid)</code></td>
    <td>API identifier. (example: 90646597-5fdb-4a17-a240-647003f8c028)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes for `ListAPIsResponseData`.</td>
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
    <td><a href="#list_apis"><CopyableCode code="list_apis" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-query"><code>query</code></a>, <a href="#parameter-page[limit]"><code>page[limit]</code></a>, <a href="#parameter-page[offset]"><code>page[offset]</code></a></td>
    <td>List APIs and their IDs.</td>
</tr>
<tr>
    <td><a href="#create_open_api"><CopyableCode code="create_open_api" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Create a new API from the [OpenAPI](https://spec.openapis.org/oas/latest.html) specification given.<br />See the [API Catalog documentation](https://docs.datadoghq.com/api_catalog/add_metadata/) for additional<br />information about the possible metadata.<br />It returns the created API ID.<br /></td>
</tr>
<tr>
    <td><a href="#update_open_api"><CopyableCode code="update_open_api" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Update information about a specific API. The given content will replace all API content of the given ID.<br />The ID is returned by the create API, or can be found in the URL in the API catalog UI.<br /></td>
</tr>
<tr>
    <td><a href="#delete_open_api"><CopyableCode code="delete_open_api" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a specific API by ID.</td>
</tr>
<tr>
    <td><a href="#get_open_api"><CopyableCode code="get_open_api" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Retrieve information about a specific API in [OpenAPI](https://spec.openapis.org/oas/latest.html) format file.</td>
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
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string (uuid)</code></td>
    <td>ID of the API to retrieve</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-page[limit]">
    <td><CopyableCode code="page[limit]" /></td>
    <td><code>integer (int64)</code></td>
    <td>Number of items per page.</td>
</tr>
<tr id="parameter-page[offset]">
    <td><CopyableCode code="page[offset]" /></td>
    <td><code>integer (int64)</code></td>
    <td>Offset for pagination.</td>
</tr>
<tr id="parameter-query">
    <td><CopyableCode code="query" /></td>
    <td><code>string</code></td>
    <td>Filter APIs by name</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_apis"
    values={[
        { label: 'list_apis', value: 'list_apis' }
    ]}
>
<TabItem value="list_apis">

List APIs and their IDs.

```sql
SELECT
id,
attributes
FROM datadog.catalog.apis
WHERE region = '{{ region }}' -- required
AND query = '{{ query }}'
AND page[limit] = '{{ page[limit] }}'
AND page[offset] = '{{ page[offset] }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_open_api"
    values={[
        { label: 'create_open_api', value: 'create_open_api' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_open_api">

Create a new API from the [OpenAPI](https://spec.openapis.org/oas/latest.html) specification given.<br />See the [API Catalog documentation](https://docs.datadoghq.com/api_catalog/add_metadata/) for additional<br />information about the possible metadata.<br />It returns the created API ID.<br />

```sql
INSERT INTO datadog.catalog.apis (
data__openapi_spec_file,
region
)
SELECT 
'{{ openapi_spec_file }}',
'{{ region }}'
RETURNING
data
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: apis
  props:
    - name: region
      value: string
      description: Required parameter for the apis resource.
    - name: openapi_spec_file
      value: string
      description: |
        Binary `OpenAPI` spec file
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update_open_api"
    values={[
        { label: 'update_open_api', value: 'update_open_api' }
    ]}
>
<TabItem value="update_open_api">

Update information about a specific API. The given content will replace all API content of the given ID.<br />The ID is returned by the create API, or can be found in the URL in the API catalog UI.<br />

```sql
REPLACE datadog.catalog.apis
SET 
data__openapi_spec_file = '{{ openapi_spec_file }}'
WHERE 
id = '{{ id }}' --required
AND region = '{{ region }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_open_api"
    values={[
        { label: 'delete_open_api', value: 'delete_open_api' }
    ]}
>
<TabItem value="delete_open_api">

Delete a specific API by ID.

```sql
DELETE FROM datadog.catalog.apis
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="get_open_api"
    values={[
        { label: 'get_open_api', value: 'get_open_api' }
    ]}
>
<TabItem value="get_open_api">

Retrieve information about a specific API in [OpenAPI](https://spec.openapis.org/oas/latest.html) format file.

```sql
EXEC datadog.catalog.apis.get_open_api 
@id='{{ id }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
</Tabs>
