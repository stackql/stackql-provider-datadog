--- 
title: dora_failures
hide_title: false
hide_table_of_contents: false
keywords:
  - dora_failures
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

Creates, updates, deletes, gets or lists a <code>dora_failures</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>dora_failures</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.software_delivery.dora_failures" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_dorafailure"
    values={[
        { label: 'get_dorafailure', value: 'get_dorafailure' },
        { label: 'list_dorafailures', value: 'list_dorafailures' }
    ]}
>
<TabItem value="get_dorafailure">

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
<TabItem value="list_dorafailures">

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
    <td><a href="#get_dorafailure"><CopyableCode code="get_dorafailure" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-failure_id"><code>failure_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Use this API endpoint to get a failure event.</td>
</tr>
<tr>
    <td><a href="#list_dorafailures"><CopyableCode code="list_dorafailures" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Use this API endpoint to get a list of failure events.</td>
</tr>
<tr>
    <td><a href="#create_dorafailure"><CopyableCode code="create_dorafailure" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Use this API endpoint to provide failure data for DORA metrics.<br /><br />This is necessary for:<br />- Change Failure Rate<br />- Time to Restore</td>
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
<tr id="parameter-failure_id">
    <td><CopyableCode code="failure_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the failure event.</td>
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
    defaultValue="get_dorafailure"
    values={[
        { label: 'get_dorafailure', value: 'get_dorafailure' },
        { label: 'list_dorafailures', value: 'list_dorafailures' }
    ]}
>
<TabItem value="get_dorafailure">

Use this API endpoint to get a failure event.

```sql
SELECT
id,
attributes,
type
FROM datadog.software_delivery.dora_failures
WHERE failure_id = '{{ failure_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_dorafailures">

Use this API endpoint to get a list of failure events.

```sql
SELECT
data
FROM datadog.software_delivery.dora_failures
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_dorafailure"
    values={[
        { label: 'create_dorafailure', value: 'create_dorafailure' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_dorafailure">

Use this API endpoint to provide failure data for DORA metrics.<br /><br />This is necessary for:<br />- Change Failure Rate<br />- Time to Restore

```sql
INSERT INTO datadog.software_delivery.dora_failures (
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
- name: dora_failures
  props:
    - name: region
      value: string
      description: Required parameter for the dora_failures resource.
    - name: data
      value: object
      description: |
        The JSON:API data.
```
</TabItem>
</Tabs>
