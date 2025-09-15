--- 
title: cloudflare_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - cloudflare_accounts
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

Creates, updates, deletes, gets or lists a <code>cloudflare_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cloudflare_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.integrations.cloudflare_accounts" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_cloudflare_account"
    values={[
        { label: 'get_cloudflare_account', value: 'get_cloudflare_account' },
        { label: 'list_cloudflare_accounts', value: 'list_cloudflare_accounts' }
    ]}
>
<TabItem value="get_cloudflare_account">

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
    <td>The ID of the Cloudflare account, a hash of the account name. (example: c1a8e059bfd1e911cf10b626340c9a54)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes object of a Cloudflare account.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The JSON:API type for this API. Should always be `cloudflare-accounts`. (default: cloudflare-accounts, example: cloudflare-accounts)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_cloudflare_accounts">

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
    <td>The ID of the Cloudflare account, a hash of the account name. (example: c1a8e059bfd1e911cf10b626340c9a54)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes object of a Cloudflare account.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The JSON:API type for this API. Should always be `cloudflare-accounts`. (default: cloudflare-accounts, example: cloudflare-accounts)</td>
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
    <td><a href="#get_cloudflare_account"><CopyableCode code="get_cloudflare_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-account_id"><code>account_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a Cloudflare account.</td>
</tr>
<tr>
    <td><a href="#list_cloudflare_accounts"><CopyableCode code="list_cloudflare_accounts" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>List Cloudflare accounts.</td>
</tr>
<tr>
    <td><a href="#create_cloudflare_account"><CopyableCode code="create_cloudflare_account" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a Cloudflare account.</td>
</tr>
<tr>
    <td><a href="#update_cloudflare_account"><CopyableCode code="update_cloudflare_account" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-account_id"><code>account_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update a Cloudflare account.</td>
</tr>
<tr>
    <td><a href="#delete_cloudflare_account"><CopyableCode code="delete_cloudflare_account" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-account_id"><code>account_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a Cloudflare account.</td>
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
    <td>None</td>
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
    defaultValue="get_cloudflare_account"
    values={[
        { label: 'get_cloudflare_account', value: 'get_cloudflare_account' },
        { label: 'list_cloudflare_accounts', value: 'list_cloudflare_accounts' }
    ]}
>
<TabItem value="get_cloudflare_account">

Get a Cloudflare account.

```sql
SELECT
id,
attributes,
type
FROM datadog.integrations.cloudflare_accounts
WHERE account_id = '{{ account_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_cloudflare_accounts">

List Cloudflare accounts.

```sql
SELECT
id,
attributes,
type
FROM datadog.integrations.cloudflare_accounts
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_cloudflare_account"
    values={[
        { label: 'create_cloudflare_account', value: 'create_cloudflare_account' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_cloudflare_account">

Create a Cloudflare account.

```sql
INSERT INTO datadog.integrations.cloudflare_accounts (
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
- name: cloudflare_accounts
  props:
    - name: region
      value: string
      description: Required parameter for the cloudflare_accounts resource.
    - name: data
      value: object
      description: |
        Data object for creating a Cloudflare account.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_cloudflare_account"
    values={[
        { label: 'update_cloudflare_account', value: 'update_cloudflare_account' }
    ]}
>
<TabItem value="update_cloudflare_account">

Update a Cloudflare account.

```sql
UPDATE datadog.integrations.cloudflare_accounts
SET 
data__data = '{{ data }}'
WHERE 
account_id = '{{ account_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_cloudflare_account"
    values={[
        { label: 'delete_cloudflare_account', value: 'delete_cloudflare_account' }
    ]}
>
<TabItem value="delete_cloudflare_account">

Delete a Cloudflare account.

```sql
DELETE FROM datadog.integrations.cloudflare_accounts
WHERE account_id = '{{ account_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
