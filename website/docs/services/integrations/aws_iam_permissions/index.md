--- 
title: aws_iam_permissions
hide_title: false
hide_table_of_contents: false
keywords:
  - aws_iam_permissions
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

Creates, updates, deletes, gets or lists an <code>aws_iam_permissions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>aws_iam_permissions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.integrations.aws_iam_permissions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_awsintegration_iampermissions"
    values={[
        { label: 'get_awsintegration_iampermissions', value: 'get_awsintegration_iampermissions' }
    ]}
>
<TabItem value="get_awsintegration_iampermissions">

AWS IAM Permissions object

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
    <td>The `AWSIntegrationIamPermissionsResponseData` `id`. (default: permissions, example: permissions)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>AWS Integration IAM Permissions response attributes.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The `AWSIntegrationIamPermissionsResponseData` `type`. (default: permissions, example: permissions)</td>
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
    <td><a href="#get_awsintegration_iampermissions"><CopyableCode code="get_awsintegration_iampermissions" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get all AWS IAM permissions required for the AWS integration.</td>
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
    defaultValue="get_awsintegration_iampermissions"
    values={[
        { label: 'get_awsintegration_iampermissions', value: 'get_awsintegration_iampermissions' }
    ]}
>
<TabItem value="get_awsintegration_iampermissions">

Get all AWS IAM permissions required for the AWS integration.

```sql
SELECT
id,
attributes,
type
FROM datadog.integrations.aws_iam_permissions
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
