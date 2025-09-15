--- 
title: dora_incidents
hide_title: false
hide_table_of_contents: false
keywords:
  - dora_incidents
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

Creates, updates, deletes, gets or lists a <code>dora_incidents</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>dora_incidents</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.software_delivery.dora_incidents" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#create_doraincident"><CopyableCode code="create_doraincident" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>**Note**: This endpoint is deprecated. Please use `/api/v2/dora/failure` instead.<br /><br />Use this API endpoint to provide failure data for DORA metrics.<br /><br />This is necessary for:<br />- Change Failure Rate<br />- Time to Restore</td>
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
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create_doraincident"
    values={[
        { label: 'create_doraincident', value: 'create_doraincident' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_doraincident">

**Note**: This endpoint is deprecated. Please use `/api/v2/dora/failure` instead.<br /><br />Use this API endpoint to provide failure data for DORA metrics.<br /><br />This is necessary for:<br />- Change Failure Rate<br />- Time to Restore

```sql
INSERT INTO datadog.software_delivery.dora_incidents (
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
- name: dora_incidents
  props:
    - name: region
      value: string
      description: Required parameter for the dora_incidents resource.
    - name: data
      value: object
      description: |
        The JSON:API data.
```
</TabItem>
</Tabs>
