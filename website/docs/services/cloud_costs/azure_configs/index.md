--- 
title: azure_configs
hide_title: false
hide_table_of_contents: false
keywords:
  - azure_configs
  - cloud_costs
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

Creates, updates, deletes, gets or lists an <code>azure_configs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>azure_configs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.cloud_costs.azure_configs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_cost_azure_ucconfigs"
    values={[
        { label: 'list_cost_azure_ucconfigs', value: 'list_cost_azure_ucconfigs' }
    ]}
>
<TabItem value="list_cost_azure_ucconfigs">

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
    <td>The ID of Cloud Cost Management account.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes for Azure config pair.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of Azure config pair. (default: azure_uc_configs, example: azure_uc_configs)</td>
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
    <td><a href="#list_cost_azure_ucconfigs"><CopyableCode code="list_cost_azure_ucconfigs" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>List the Azure configs.</td>
</tr>
<tr>
    <td><a href="#create_cost_azure_ucconfigs"><CopyableCode code="create_cost_azure_ucconfigs" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a Cloud Cost Management account for an Azure config.</td>
</tr>
<tr>
    <td><a href="#update_cost_azure_ucconfigs"><CopyableCode code="update_cost_azure_ucconfigs" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-cloud_account_id"><code>cloud_account_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update the status of an  Azure config (active/archived).</td>
</tr>
<tr>
    <td><a href="#delete_cost_azure_ucconfig"><CopyableCode code="delete_cost_azure_ucconfig" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-cloud_account_id"><code>cloud_account_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Archive a Cloud Cost Management Account.</td>
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
<tr id="parameter-cloud_account_id">
    <td><CopyableCode code="cloud_account_id" /></td>
    <td><code>integer (int64)</code></td>
    <td>Cloud Account id.</td>
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
    defaultValue="list_cost_azure_ucconfigs"
    values={[
        { label: 'list_cost_azure_ucconfigs', value: 'list_cost_azure_ucconfigs' }
    ]}
>
<TabItem value="list_cost_azure_ucconfigs">

List the Azure configs.

```sql
SELECT
id,
attributes,
type
FROM datadog.cloud_costs.azure_configs
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_cost_azure_ucconfigs"
    values={[
        { label: 'create_cost_azure_ucconfigs', value: 'create_cost_azure_ucconfigs' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_cost_azure_ucconfigs">

Create a Cloud Cost Management account for an Azure config.

```sql
INSERT INTO datadog.cloud_costs.azure_configs (
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
- name: azure_configs
  props:
    - name: region
      value: string
      description: Required parameter for the azure_configs resource.
    - name: data
      value: object
      description: |
        Azure config Post data.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_cost_azure_ucconfigs"
    values={[
        { label: 'update_cost_azure_ucconfigs', value: 'update_cost_azure_ucconfigs' }
    ]}
>
<TabItem value="update_cost_azure_ucconfigs">

Update the status of an  Azure config (active/archived).

```sql
UPDATE datadog.cloud_costs.azure_configs
SET 
data__data = '{{ data }}'
WHERE 
cloud_account_id = '{{ cloud_account_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_cost_azure_ucconfig"
    values={[
        { label: 'delete_cost_azure_ucconfig', value: 'delete_cost_azure_ucconfig' }
    ]}
>
<TabItem value="delete_cost_azure_ucconfig">

Archive a Cloud Cost Management Account.

```sql
DELETE FROM datadog.cloud_costs.azure_configs
WHERE cloud_account_id = '{{ cloud_account_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
