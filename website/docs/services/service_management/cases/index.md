--- 
title: cases
hide_title: false
hide_table_of_contents: false
keywords:
  - cases
  - service_management
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

Creates, updates, deletes, gets or lists a <code>cases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cases</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.service_management.cases" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_case"
    values={[
        { label: 'get_case', value: 'get_case' }
    ]}
>
<TabItem value="get_case">

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
    <td>Case's identifier (example: aeadc05e-98a8-11ec-ac2c-da7ad0900001)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Case resource attributes</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>Resources related to a case</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Case resource type (default: case, example: case)</td>
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
    <td><a href="#get_case"><CopyableCode code="get_case" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-case_id"><code>case_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the details of case by `case_id`</td>
</tr>
<tr>
    <td><a href="#create_case"><CopyableCode code="create_case" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a Case</td>
</tr>
<tr>
    <td><a href="#search_cases"><CopyableCode code="search_cases" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-page[size]"><code>page[size]</code></a>, <a href="#parameter-page[number]"><code>page[number]</code></a>, <a href="#parameter-sort[field]"><code>sort[field]</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-sort[asc]"><code>sort[asc]</code></a></td>
    <td>Search cases.</td>
</tr>
<tr>
    <td><a href="#archive_case"><CopyableCode code="archive_case" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-case_id"><code>case_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Archive case</td>
</tr>
<tr>
    <td><a href="#assign_case"><CopyableCode code="assign_case" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-case_id"><code>case_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Assign case to a user</td>
</tr>
<tr>
    <td><a href="#update_attributes"><CopyableCode code="update_attributes" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-case_id"><code>case_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Update case attributes</td>
</tr>
<tr>
    <td><a href="#update_priority"><CopyableCode code="update_priority" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-case_id"><code>case_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Update case priority</td>
</tr>
<tr>
    <td><a href="#update_status"><CopyableCode code="update_status" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-case_id"><code>case_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Update case status</td>
</tr>
<tr>
    <td><a href="#unarchive_case"><CopyableCode code="unarchive_case" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-case_id"><code>case_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Unarchive case</td>
</tr>
<tr>
    <td><a href="#unassign_case"><CopyableCode code="unassign_case" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-case_id"><code>case_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Unassign case</td>
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
<tr id="parameter-case_id">
    <td><CopyableCode code="case_id" /></td>
    <td><code>string</code></td>
    <td>Case's UUID or key (example: f98a5a5b-e0ff-45d4-b2f5-afe6e74de504)</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>Search query</td>
</tr>
<tr id="parameter-page[number]">
    <td><CopyableCode code="page[number]" /></td>
    <td><code>integer (int64)</code></td>
    <td>Specific page number to return.</td>
</tr>
<tr id="parameter-page[size]">
    <td><CopyableCode code="page[size]" /></td>
    <td><code>integer (int64)</code></td>
    <td>Size for a given page. The maximum allowed value is 100.</td>
</tr>
<tr id="parameter-sort[asc]">
    <td><CopyableCode code="sort[asc]" /></td>
    <td><code>boolean</code></td>
    <td>Specify if order is ascending or not</td>
</tr>
<tr id="parameter-sort[field]">
    <td><CopyableCode code="sort[field]" /></td>
    <td><code>string</code></td>
    <td>Specify which field to sort</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_case"
    values={[
        { label: 'get_case', value: 'get_case' }
    ]}
>
<TabItem value="get_case">

Get the details of case by `case_id`

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.service_management.cases
WHERE case_id = '{{ case_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_case"
    values={[
        { label: 'create_case', value: 'create_case' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_case">

Create a Case

```sql
INSERT INTO datadog.service_management.cases (
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
- name: cases
  props:
    - name: region
      value: string
      description: Required parameter for the cases resource.
    - name: data
      value: object
      description: |
        Case creation data
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="search_cases"
    values={[
        { label: 'search_cases', value: 'search_cases' },
        { label: 'archive_case', value: 'archive_case' },
        { label: 'assign_case', value: 'assign_case' },
        { label: 'update_attributes', value: 'update_attributes' },
        { label: 'update_priority', value: 'update_priority' },
        { label: 'update_status', value: 'update_status' },
        { label: 'unarchive_case', value: 'unarchive_case' },
        { label: 'unassign_case', value: 'unassign_case' }
    ]}
>
<TabItem value="search_cases">

Search cases.

```sql
EXEC datadog.service_management.cases.search_cases 
@region='{{ region }}' --required, 
@page[size]='{{ page[size] }}', 
@page[number]='{{ page[number] }}', 
@sort[field]='{{ sort[field] }}', 
@filter='{{ filter }}', 
@sort[asc]={{ sort[asc] }}
;
```
</TabItem>
<TabItem value="archive_case">

Archive case

```sql
EXEC datadog.service_management.cases.archive_case 
@case_id='{{ case_id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
<TabItem value="assign_case">

Assign case to a user

```sql
EXEC datadog.service_management.cases.assign_case 
@case_id='{{ case_id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
<TabItem value="update_attributes">

Update case attributes

```sql
EXEC datadog.service_management.cases.update_attributes 
@case_id='{{ case_id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
<TabItem value="update_priority">

Update case priority

```sql
EXEC datadog.service_management.cases.update_priority 
@case_id='{{ case_id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
<TabItem value="update_status">

Update case status

```sql
EXEC datadog.service_management.cases.update_status 
@case_id='{{ case_id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
<TabItem value="unarchive_case">

Unarchive case

```sql
EXEC datadog.service_management.cases.unarchive_case 
@case_id='{{ case_id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
<TabItem value="unassign_case">

Unassign case

```sql
EXEC datadog.service_management.cases.unassign_case 
@case_id='{{ case_id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
</Tabs>
