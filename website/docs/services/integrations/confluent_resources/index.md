--- 
title: confluent_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - confluent_resources
  - integrations
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

Creates, updates, deletes, gets or lists a <code>confluent_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>confluent_resources</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.integrations.confluent_resources" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_confluent_resource"
    values={[
        { label: 'get_confluent_resource', value: 'get_confluent_resource' },
        { label: 'list_confluent_resource', value: 'list_confluent_resource' }
    ]}
>
<TabItem value="get_confluent_resource">

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
    <td>The ID associated with the Confluent resource. (example: resource_id_abc123)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Model representation of a Confluent Cloud resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The JSON:API type for this request. (default: confluent-cloud-resources, example: confluent-cloud-resources)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_confluent_resource">

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
    <td>The ID associated with the Confluent resource. (example: resource_id_abc123)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Model representation of a Confluent Cloud resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The JSON:API type for this request. (default: confluent-cloud-resources, example: confluent-cloud-resources)</td>
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
    <td><a href="#get_confluent_resource"><CopyableCode code="get_confluent_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-account_id"><code>account_id</code></a>, <a href="#parameter-resource_id"><code>resource_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a Confluent resource with the provided resource id for the account associated with the provided account ID.</td>
</tr>
<tr>
    <td><a href="#list_confluent_resource"><CopyableCode code="list_confluent_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-account_id"><code>account_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a Confluent resource for the account associated with the provided ID.</td>
</tr>
<tr>
    <td><a href="#create_confluent_resource"><CopyableCode code="create_confluent_resource" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-account_id"><code>account_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a Confluent resource for the account associated with the provided ID.</td>
</tr>
<tr>
    <td><a href="#update_confluent_resource"><CopyableCode code="update_confluent_resource" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-account_id"><code>account_id</code></a>, <a href="#parameter-resource_id"><code>resource_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update a Confluent resource with the provided resource id for the account associated with the provided account ID.</td>
</tr>
<tr>
    <td><a href="#delete_confluent_resource"><CopyableCode code="delete_confluent_resource" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-account_id"><code>account_id</code></a>, <a href="#parameter-resource_id"><code>resource_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a Confluent resource with the provided resource id for the account associated with the provided account ID.</td>
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
<tr id="parameter-account_id">
    <td><CopyableCode code="account_id" /></td>
    <td><code>string</code></td>
    <td>Confluent Account ID.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-resource_id">
    <td><CopyableCode code="resource_id" /></td>
    <td><code>string</code></td>
    <td>Confluent Account Resource ID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_confluent_resource"
    values={[
        { label: 'get_confluent_resource', value: 'get_confluent_resource' },
        { label: 'list_confluent_resource', value: 'list_confluent_resource' }
    ]}
>
<TabItem value="get_confluent_resource">

Get a Confluent resource with the provided resource id for the account associated with the provided account ID.

```sql
SELECT
id,
attributes,
type
FROM datadog.integrations.confluent_resources
WHERE account_id = '{{ account_id }}' -- required
AND resource_id = '{{ resource_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_confluent_resource">

Get a Confluent resource for the account associated with the provided ID.

```sql
SELECT
id,
attributes,
type
FROM datadog.integrations.confluent_resources
WHERE account_id = '{{ account_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_confluent_resource"
    values={[
        { label: 'create_confluent_resource', value: 'create_confluent_resource' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_confluent_resource">

Create a Confluent resource for the account associated with the provided ID.

```sql
INSERT INTO datadog.integrations.confluent_resources (
data__data,
account_id,
region
)
SELECT 
'{{ data }}' /* required */,
'{{ account_id }}',
'{{ region }}'
RETURNING
data
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: confluent_resources
  props:
    - name: account_id
      value: string
      description: Required parameter for the confluent_resources resource.
    - name: region
      value: string
      description: Required parameter for the confluent_resources resource.
    - name: data
      value: object
      description: |
        JSON:API request for updating a Confluent resource.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_confluent_resource"
    values={[
        { label: 'update_confluent_resource', value: 'update_confluent_resource' }
    ]}
>
<TabItem value="update_confluent_resource">

Update a Confluent resource with the provided resource id for the account associated with the provided account ID.

```sql
UPDATE datadog.integrations.confluent_resources
SET 
data__data = '{{ data }}'
WHERE 
account_id = '{{ account_id }}' --required
AND resource_id = '{{ resource_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_confluent_resource"
    values={[
        { label: 'delete_confluent_resource', value: 'delete_confluent_resource' }
    ]}
>
<TabItem value="delete_confluent_resource">

Delete a Confluent resource with the provided resource id for the account associated with the provided account ID.

```sql
DELETE FROM datadog.integrations.confluent_resources
WHERE account_id = '{{ account_id }}' --required
AND resource_id = '{{ resource_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
