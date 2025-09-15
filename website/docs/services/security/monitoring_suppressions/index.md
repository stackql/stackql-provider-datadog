--- 
title: monitoring_suppressions
hide_title: false
hide_table_of_contents: false
keywords:
  - monitoring_suppressions
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

Creates, updates, deletes, gets or lists a <code>monitoring_suppressions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>monitoring_suppressions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.monitoring_suppressions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_security_monitoring_suppression"
    values={[
        { label: 'get_security_monitoring_suppression', value: 'get_security_monitoring_suppression' },
        { label: 'list_security_monitoring_suppressions', value: 'list_security_monitoring_suppressions' }
    ]}
>
<TabItem value="get_security_monitoring_suppression">

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
    <td>The ID of the suppression rule. (example: 3dd-0uc-h1s)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The attributes of the suppression rule.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value should always be `suppressions`. (default: suppressions, example: suppressions)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_security_monitoring_suppressions">

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
    <td>The ID of the suppression rule. (example: 3dd-0uc-h1s)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The attributes of the suppression rule.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value should always be `suppressions`. (default: suppressions, example: suppressions)</td>
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
    <td><a href="#get_security_monitoring_suppression"><CopyableCode code="get_security_monitoring_suppression" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-suppression_id"><code>suppression_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the details of a specific suppression rule.</td>
</tr>
<tr>
    <td><a href="#list_security_monitoring_suppressions"><CopyableCode code="list_security_monitoring_suppressions" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the list of all suppression rules.</td>
</tr>
<tr>
    <td><a href="#create_security_monitoring_suppression"><CopyableCode code="create_security_monitoring_suppression" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a new suppression rule.</td>
</tr>
<tr>
    <td><a href="#update_security_monitoring_suppression"><CopyableCode code="update_security_monitoring_suppression" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-suppression_id"><code>suppression_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update a specific suppression rule.</td>
</tr>
<tr>
    <td><a href="#delete_security_monitoring_suppression"><CopyableCode code="delete_security_monitoring_suppression" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-suppression_id"><code>suppression_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a specific suppression rule.</td>
</tr>
<tr>
    <td><a href="#validate_security_monitoring_suppression"><CopyableCode code="validate_security_monitoring_suppression" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Validate a suppression rule.</td>
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
<tr id="parameter-suppression_id">
    <td><CopyableCode code="suppression_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the suppression rule</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_security_monitoring_suppression"
    values={[
        { label: 'get_security_monitoring_suppression', value: 'get_security_monitoring_suppression' },
        { label: 'list_security_monitoring_suppressions', value: 'list_security_monitoring_suppressions' }
    ]}
>
<TabItem value="get_security_monitoring_suppression">

Get the details of a specific suppression rule.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.monitoring_suppressions
WHERE suppression_id = '{{ suppression_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_security_monitoring_suppressions">

Get the list of all suppression rules.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.monitoring_suppressions
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_security_monitoring_suppression"
    values={[
        { label: 'create_security_monitoring_suppression', value: 'create_security_monitoring_suppression' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_security_monitoring_suppression">

Create a new suppression rule.

```sql
INSERT INTO datadog.security.monitoring_suppressions (
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
- name: monitoring_suppressions
  props:
    - name: region
      value: string
      description: Required parameter for the monitoring_suppressions resource.
    - name: data
      value: object
      description: |
        Object for a single suppression rule.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_security_monitoring_suppression"
    values={[
        { label: 'update_security_monitoring_suppression', value: 'update_security_monitoring_suppression' }
    ]}
>
<TabItem value="update_security_monitoring_suppression">

Update a specific suppression rule.

```sql
UPDATE datadog.security.monitoring_suppressions
SET 
data__data = '{{ data }}'
WHERE 
suppression_id = '{{ suppression_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_security_monitoring_suppression"
    values={[
        { label: 'delete_security_monitoring_suppression', value: 'delete_security_monitoring_suppression' }
    ]}
>
<TabItem value="delete_security_monitoring_suppression">

Delete a specific suppression rule.

```sql
DELETE FROM datadog.security.monitoring_suppressions
WHERE suppression_id = '{{ suppression_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="validate_security_monitoring_suppression"
    values={[
        { label: 'validate_security_monitoring_suppression', value: 'validate_security_monitoring_suppression' }
    ]}
>
<TabItem value="validate_security_monitoring_suppression">

Validate a suppression rule.

```sql
EXEC datadog.security.monitoring_suppressions.validate_security_monitoring_suppression 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
</Tabs>
