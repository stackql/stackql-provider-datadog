--- 
title: aws_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - aws_accounts
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

Creates, updates, deletes, gets or lists an <code>aws_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>aws_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.integrations.aws_accounts" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_awsaccount"
    values={[
        { label: 'get_awsaccount', value: 'get_awsaccount' },
        { label: 'list_awsaccounts', value: 'list_awsaccounts' }
    ]}
>
<TabItem value="get_awsaccount">

AWS Account object

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
    <td>Unique Datadog ID of the AWS Account Integration Config. To get the config ID for an account, use the [List all AWS integrations](https://docs.datadoghq.com/api/latest/aws-integration/#list-all-aws-integrations) endpoint and query by AWS Account ID. (example: 00000000-abcd-0001-0000-000000000000)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>AWS Account response attributes.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>AWS Account resource type. (default: account, example: account)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_awsaccounts">

AWS Accounts List object

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
    <td>Unique Datadog ID of the AWS Account Integration Config. To get the config ID for an account, use the [List all AWS integrations](https://docs.datadoghq.com/api/latest/aws-integration/#list-all-aws-integrations) endpoint and query by AWS Account ID. (example: 00000000-abcd-0001-0000-000000000000)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>AWS Account response attributes.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>AWS Account resource type. (default: account, example: account)</td>
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
    <td><a href="#get_awsaccount"><CopyableCode code="get_awsaccount" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-aws_account_config_id"><code>aws_account_config_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get an AWS Account Integration Config by config ID.</td>
</tr>
<tr>
    <td><a href="#list_awsaccounts"><CopyableCode code="list_awsaccounts" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-aws_account_id"><code>aws_account_id</code></a></td>
    <td>Get a list of AWS Account Integration Configs.</td>
</tr>
<tr>
    <td><a href="#create_awsaccount"><CopyableCode code="create_awsaccount" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a new AWS Account Integration Config.</td>
</tr>
<tr>
    <td><a href="#update_awsaccount"><CopyableCode code="update_awsaccount" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-aws_account_config_id"><code>aws_account_config_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update an AWS Account Integration Config by config ID.</td>
</tr>
<tr>
    <td><a href="#delete_awsaccount"><CopyableCode code="delete_awsaccount" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-aws_account_config_id"><code>aws_account_config_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete an AWS Account Integration Config by config ID.</td>
</tr>
<tr>
    <td><a href="#create_new_awsexternal_id"><CopyableCode code="create_new_awsexternal_id" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Generate a new external ID for AWS role-based authentication.</td>
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
<tr id="parameter-aws_account_config_id">
    <td><CopyableCode code="aws_account_config_id" /></td>
    <td><code>string</code></td>
    <td>Unique Datadog ID of the AWS Account Integration Config. To get the config ID for an account, use the [List all AWS integrations](https://docs.datadoghq.com/api/latest/aws-integration/#list-all-aws-integrations) endpoint and query by AWS Account ID.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-aws_account_id">
    <td><CopyableCode code="aws_account_id" /></td>
    <td><code>string</code></td>
    <td>Optional query parameter to filter accounts by AWS Account ID. If not provided, all accounts are returned. (example: 123456789012)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_awsaccount"
    values={[
        { label: 'get_awsaccount', value: 'get_awsaccount' },
        { label: 'list_awsaccounts', value: 'list_awsaccounts' }
    ]}
>
<TabItem value="get_awsaccount">

Get an AWS Account Integration Config by config ID.

```sql
SELECT
id,
attributes,
type
FROM datadog.integrations.aws_accounts
WHERE aws_account_config_id = '{{ aws_account_config_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_awsaccounts">

Get a list of AWS Account Integration Configs.

```sql
SELECT
id,
attributes,
type
FROM datadog.integrations.aws_accounts
WHERE region = '{{ region }}' -- required
AND aws_account_id = '{{ aws_account_id }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_awsaccount"
    values={[
        { label: 'create_awsaccount', value: 'create_awsaccount' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_awsaccount">

Create a new AWS Account Integration Config.

```sql
INSERT INTO datadog.integrations.aws_accounts (
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
- name: aws_accounts
  props:
    - name: region
      value: string
      description: Required parameter for the aws_accounts resource.
    - name: data
      value: object
      description: |
        AWS Account Create Request data.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_awsaccount"
    values={[
        { label: 'update_awsaccount', value: 'update_awsaccount' }
    ]}
>
<TabItem value="update_awsaccount">

Update an AWS Account Integration Config by config ID.

```sql
UPDATE datadog.integrations.aws_accounts
SET 
data__data = '{{ data }}'
WHERE 
aws_account_config_id = '{{ aws_account_config_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_awsaccount"
    values={[
        { label: 'delete_awsaccount', value: 'delete_awsaccount' }
    ]}
>
<TabItem value="delete_awsaccount">

Delete an AWS Account Integration Config by config ID.

```sql
DELETE FROM datadog.integrations.aws_accounts
WHERE aws_account_config_id = '{{ aws_account_config_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="create_new_awsexternal_id"
    values={[
        { label: 'create_new_awsexternal_id', value: 'create_new_awsexternal_id' }
    ]}
>
<TabItem value="create_new_awsexternal_id">

Generate a new external ID for AWS role-based authentication.

```sql
EXEC datadog.integrations.aws_accounts.create_new_awsexternal_id 
@region='{{ region }}' --required
;
```
</TabItem>
</Tabs>
