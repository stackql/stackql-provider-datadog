--- 
title: dora_deployments
hide_title: false
hide_table_of_contents: false
keywords:
  - dora_deployments
  - software_delivery
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

Creates, updates, deletes, gets or lists a <code>dora_deployments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>dora_deployments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.software_delivery.dora_deployments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_doradeployment"
    values={[
        { label: 'get_doradeployment', value: 'get_doradeployment' },
        { label: 'list_doradeployments', value: 'list_doradeployments' }
    ]}
>
<TabItem value="get_doradeployment">

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
    <td>The ID of the event.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The attributes of the event.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the event.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_doradeployments">

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
    <td><CopyableCode code="data" /></td>
    <td><code>array</code></td>
    <td>The list of DORA events.</td>
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
    <td><a href="#get_doradeployment"><CopyableCode code="get_doradeployment" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-deployment_id"><code>deployment_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Use this API endpoint to get a deployment event.</td>
</tr>
<tr>
    <td><a href="#list_doradeployments"><CopyableCode code="list_doradeployments" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Use this API endpoint to get a list of deployment events.</td>
</tr>
<tr>
    <td><a href="#create_doradeployment"><CopyableCode code="create_doradeployment" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Use this API endpoint to provide data about deployments for DORA metrics.<br /><br />This is necessary for:<br />- Deployment Frequency<br />- Change Lead Time<br />- Change Failure Rate</td>
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
<tr id="parameter-deployment_id">
    <td><CopyableCode code="deployment_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the deployment event.</td>
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
    defaultValue="get_doradeployment"
    values={[
        { label: 'get_doradeployment', value: 'get_doradeployment' },
        { label: 'list_doradeployments', value: 'list_doradeployments' }
    ]}
>
<TabItem value="get_doradeployment">

Use this API endpoint to get a deployment event.

```sql
SELECT
id,
attributes,
type
FROM datadog.software_delivery.dora_deployments
WHERE deployment_id = '{{ deployment_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_doradeployments">

Use this API endpoint to get a list of deployment events.

```sql
SELECT
data
FROM datadog.software_delivery.dora_deployments
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_doradeployment"
    values={[
        { label: 'create_doradeployment', value: 'create_doradeployment' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_doradeployment">

Use this API endpoint to provide data about deployments for DORA metrics.<br /><br />This is necessary for:<br />- Deployment Frequency<br />- Change Lead Time<br />- Change Failure Rate

```sql
INSERT INTO datadog.software_delivery.dora_deployments (
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
- name: dora_deployments
  props:
    - name: region
      value: string
      description: Required parameter for the dora_deployments resource.
    - name: data
      value: object
      description: |
        The JSON:API data.
```
</TabItem>
</Tabs>
