--- 
title: aws_on_demand_tasks
hide_title: false
hide_table_of_contents: false
keywords:
  - aws_on_demand_tasks
  - security
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

Creates, updates, deletes, gets or lists an <code>aws_on_demand_tasks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>aws_on_demand_tasks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.aws_on_demand_tasks" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_aws_on_demand_task"
    values={[
        { label: 'get_aws_on_demand_task', value: 'get_aws_on_demand_task' },
        { label: 'list_aws_on_demand_tasks', value: 'list_aws_on_demand_tasks' }
    ]}
>
<TabItem value="get_aws_on_demand_task">

OK.

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
    <td>The UUID of the task. (example: 6d09294c-9ad9-42fd-a759-a0c1599b4828)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes for the AWS on demand task.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the on demand task. The value should always be `aws_resource`. (default: aws_resource, example: aws_resource)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_aws_on_demand_tasks">

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
    <td>The UUID of the task. (example: 6d09294c-9ad9-42fd-a759-a0c1599b4828)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes for the AWS on demand task.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the on demand task. The value should always be `aws_resource`. (default: aws_resource, example: aws_resource)</td>
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
    <td><a href="#get_aws_on_demand_task"><CopyableCode code="get_aws_on_demand_task" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-task_id"><code>task_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Fetch the data of a specific on demand task.</td>
</tr>
<tr>
    <td><a href="#list_aws_on_demand_tasks"><CopyableCode code="list_aws_on_demand_tasks" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Fetches the most recent 1000 AWS on demand tasks.</td>
</tr>
<tr>
    <td><a href="#create_aws_on_demand_task"><CopyableCode code="create_aws_on_demand_task" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Trigger the scan of an AWS resource with a high priority. Agentless scanning must be activated for the AWS account containing the resource to scan.</td>
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
<tr id="parameter-task_id">
    <td><CopyableCode code="task_id" /></td>
    <td><code>string</code></td>
    <td>The UUID of the task. (example: 6d09294c-9ad9-42fd-a759-a0c1599b4828)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_aws_on_demand_task"
    values={[
        { label: 'get_aws_on_demand_task', value: 'get_aws_on_demand_task' },
        { label: 'list_aws_on_demand_tasks', value: 'list_aws_on_demand_tasks' }
    ]}
>
<TabItem value="get_aws_on_demand_task">

Fetch the data of a specific on demand task.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.aws_on_demand_tasks
WHERE task_id = '{{ task_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_aws_on_demand_tasks">

Fetches the most recent 1000 AWS on demand tasks.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.aws_on_demand_tasks
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_aws_on_demand_task"
    values={[
        { label: 'create_aws_on_demand_task', value: 'create_aws_on_demand_task' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_aws_on_demand_task">

Trigger the scan of an AWS resource with a high priority. Agentless scanning must be activated for the AWS account containing the resource to scan.

```sql
INSERT INTO datadog.security.aws_on_demand_tasks (
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
- name: aws_on_demand_tasks
  props:
    - name: region
      value: string
      description: Required parameter for the aws_on_demand_tasks resource.
    - name: data
      value: object
      description: |
        Object for a single AWS on demand task.
```
</TabItem>
</Tabs>
