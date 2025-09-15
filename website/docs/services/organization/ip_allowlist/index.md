--- 
title: ip_allowlist
hide_title: false
hide_table_of_contents: false
keywords:
  - ip_allowlist
  - organization
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

Creates, updates, deletes, gets or lists an <code>ip_allowlist</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>ip_allowlist</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.ip_allowlist" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_ipallowlist"
    values={[
        { label: 'get_ipallowlist', value: 'get_ipallowlist' }
    ]}
>
<TabItem value="get_ipallowlist">

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
    <td>The unique identifier of the org.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes of the IP allowlist.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>IP allowlist type. (default: ip_allowlist, example: ip_allowlist)</td>
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
    <td><a href="#get_ipallowlist"><CopyableCode code="get_ipallowlist" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Returns the IP allowlist and its enabled or disabled state.</td>
</tr>
<tr>
    <td><a href="#update_ipallowlist"><CopyableCode code="update_ipallowlist" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Edit the entries in the IP allowlist, and enable or disable it.</td>
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

## `SELECT` examples

<Tabs
    defaultValue="get_ipallowlist"
    values={[
        { label: 'get_ipallowlist', value: 'get_ipallowlist' }
    ]}
>
<TabItem value="get_ipallowlist">

Returns the IP allowlist and its enabled or disabled state.

```sql
SELECT
id,
attributes,
type
FROM datadog.organization.ip_allowlist
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_ipallowlist"
    values={[
        { label: 'update_ipallowlist', value: 'update_ipallowlist' }
    ]}
>
<TabItem value="update_ipallowlist">

Edit the entries in the IP allowlist, and enable or disable it.

```sql
UPDATE datadog.organization.ip_allowlist
SET 
data__data = '{{ data }}'
WHERE 
region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>
