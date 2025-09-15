--- 
title: cloud_workload_security_agent_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - cloud_workload_security_agent_rules
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

Creates, updates, deletes, gets or lists a <code>cloud_workload_security_agent_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cloud_workload_security_agent_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.cloud_workload_security_agent_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_cloud_workload_security_agent_rule"
    values={[
        { label: 'get_cloud_workload_security_agent_rule', value: 'get_cloud_workload_security_agent_rule' },
        { label: 'list_cloud_workload_security_agent_rules', value: 'list_cloud_workload_security_agent_rules' }
    ]}
>
<TabItem value="get_cloud_workload_security_agent_rule">

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
    <td>The ID of the Agent rule (example: 3dd-0uc-h1s)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>A Cloud Workload Security Agent rule returned by the API</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource, must always be `agent_rule` (default: agent_rule, example: agent_rule)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_cloud_workload_security_agent_rules">

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
    <td>The ID of the Agent rule (example: 3dd-0uc-h1s)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>A Cloud Workload Security Agent rule returned by the API</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource, must always be `agent_rule` (default: agent_rule, example: agent_rule)</td>
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
    <td><a href="#get_cloud_workload_security_agent_rule"><CopyableCode code="get_cloud_workload_security_agent_rule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-agent_rule_id"><code>agent_rule_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the details of a specific agent rule.<br /><br />**Note**: This endpoint should only be used for the Government (US1-FED) site.</td>
</tr>
<tr>
    <td><a href="#list_cloud_workload_security_agent_rules"><CopyableCode code="list_cloud_workload_security_agent_rules" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the list of agent rules.<br /><br />**Note**: This endpoint should only be used for the Government (US1-FED) site.</td>
</tr>
<tr>
    <td><a href="#create_cloud_workload_security_agent_rule"><CopyableCode code="create_cloud_workload_security_agent_rule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a new agent rule with the given parameters.<br /><br />**Note**: This endpoint should only be used for the Government (US1-FED) site.</td>
</tr>
<tr>
    <td><a href="#update_cloud_workload_security_agent_rule"><CopyableCode code="update_cloud_workload_security_agent_rule" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-agent_rule_id"><code>agent_rule_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update a specific agent rule.<br />Returns the agent rule object when the request is successful.<br /><br />**Note**: This endpoint should only be used for the Government (US1-FED) site.</td>
</tr>
<tr>
    <td><a href="#delete_cloud_workload_security_agent_rule"><CopyableCode code="delete_cloud_workload_security_agent_rule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-agent_rule_id"><code>agent_rule_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a specific agent rule.<br /><br />**Note**: This endpoint should only be used for the Government (US1-FED) site.</td>
</tr>
<tr>
    <td><a href="#download_cloud_workload_policy_file"><CopyableCode code="download_cloud_workload_policy_file" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>The download endpoint generates a Workload Protection policy file from your currently active<br />Workload Protection agent rules, and downloads them as a `.policy` file. This file can then be deployed to<br />your agents to update the policy running in your environment.<br /><br />**Note**: This endpoint should only be used for the Government (US1-FED) site.</td>
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
<tr id="parameter-agent_rule_id">
    <td><CopyableCode code="agent_rule_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the Agent rule (example: 3b5-v82-ns6)</td>
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
    defaultValue="get_cloud_workload_security_agent_rule"
    values={[
        { label: 'get_cloud_workload_security_agent_rule', value: 'get_cloud_workload_security_agent_rule' },
        { label: 'list_cloud_workload_security_agent_rules', value: 'list_cloud_workload_security_agent_rules' }
    ]}
>
<TabItem value="get_cloud_workload_security_agent_rule">

Get the details of a specific agent rule.<br /><br />**Note**: This endpoint should only be used for the Government (US1-FED) site.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.cloud_workload_security_agent_rules
WHERE agent_rule_id = '{{ agent_rule_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_cloud_workload_security_agent_rules">

Get the list of agent rules.<br /><br />**Note**: This endpoint should only be used for the Government (US1-FED) site.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.cloud_workload_security_agent_rules
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_cloud_workload_security_agent_rule"
    values={[
        { label: 'create_cloud_workload_security_agent_rule', value: 'create_cloud_workload_security_agent_rule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_cloud_workload_security_agent_rule">

Create a new agent rule with the given parameters.<br /><br />**Note**: This endpoint should only be used for the Government (US1-FED) site.

```sql
INSERT INTO datadog.security.cloud_workload_security_agent_rules (
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
- name: cloud_workload_security_agent_rules
  props:
    - name: region
      value: string
      description: Required parameter for the cloud_workload_security_agent_rules resource.
    - name: data
      value: object
      description: |
        Object for a single Agent rule
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_cloud_workload_security_agent_rule"
    values={[
        { label: 'update_cloud_workload_security_agent_rule', value: 'update_cloud_workload_security_agent_rule' }
    ]}
>
<TabItem value="update_cloud_workload_security_agent_rule">

Update a specific agent rule.<br />Returns the agent rule object when the request is successful.<br /><br />**Note**: This endpoint should only be used for the Government (US1-FED) site.

```sql
UPDATE datadog.security.cloud_workload_security_agent_rules
SET 
data__data = '{{ data }}'
WHERE 
agent_rule_id = '{{ agent_rule_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_cloud_workload_security_agent_rule"
    values={[
        { label: 'delete_cloud_workload_security_agent_rule', value: 'delete_cloud_workload_security_agent_rule' }
    ]}
>
<TabItem value="delete_cloud_workload_security_agent_rule">

Delete a specific agent rule.<br /><br />**Note**: This endpoint should only be used for the Government (US1-FED) site.

```sql
DELETE FROM datadog.security.cloud_workload_security_agent_rules
WHERE agent_rule_id = '{{ agent_rule_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="download_cloud_workload_policy_file"
    values={[
        { label: 'download_cloud_workload_policy_file', value: 'download_cloud_workload_policy_file' }
    ]}
>
<TabItem value="download_cloud_workload_policy_file">

The download endpoint generates a Workload Protection policy file from your currently active<br />Workload Protection agent rules, and downloads them as a `.policy` file. This file can then be deployed to<br />your agents to update the policy running in your environment.<br /><br />**Note**: This endpoint should only be used for the Government (US1-FED) site.

```sql
EXEC datadog.security.cloud_workload_security_agent_rules.download_cloud_workload_policy_file 
@region='{{ region }}' --required
;
```
</TabItem>
</Tabs>
