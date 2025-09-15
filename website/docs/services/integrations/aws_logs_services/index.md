--- 
title: aws_logs_services
hide_title: false
hide_table_of_contents: false
keywords:
  - aws_logs_services
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

Creates, updates, deletes, gets or lists an <code>aws_logs_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>aws_logs_services</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.integrations.aws_logs_services" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_awslogs_services"
    values={[
        { label: 'list_awslogs_services', value: 'list_awslogs_services' }
    ]}
>
<TabItem value="list_awslogs_services">

AWS Logs Services List object

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
    <td>The `AWSLogsServicesResponseData` `id`. (default: logs_services, example: logs_services)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>AWS Logs Services response body</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The `AWSLogsServicesResponseData` `type`. (default: logs_services, example: logs_services)</td>
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
    <td><a href="#list_awslogs_services"><CopyableCode code="list_awslogs_services" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a list of AWS services that can send logs to Datadog.</td>
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
    defaultValue="list_awslogs_services"
    values={[
        { label: 'list_awslogs_services', value: 'list_awslogs_services' }
    ]}
>
<TabItem value="list_awslogs_services">

Get a list of AWS services that can send logs to Datadog.

```sql
SELECT
id,
attributes,
type
FROM datadog.integrations.aws_logs_services
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
