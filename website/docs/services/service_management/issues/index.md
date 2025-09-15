--- 
title: issues
hide_title: false
hide_table_of_contents: false
keywords:
  - issues
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

Creates, updates, deletes, gets or lists an <code>issues</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>issues</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.service_management.issues" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_issue"
    values={[
        { label: 'get_issue', value: 'get_issue' }
    ]}
>
<TabItem value="get_issue">

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
    <td>Issue identifier. (example: c1726a66-1f64-11ee-b338-da7ad0900002)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Object containing the information of an issue.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>Relationship between the issue and an assignee, case and/or teams.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the object. (example: issue)</td>
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
    <td><a href="#get_issue"><CopyableCode code="get_issue" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-issue_id"><code>issue_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Retrieve the full details for a specific error tracking issue, including attributes and relationships.</td>
</tr>
<tr>
    <td><a href="#search_issues"><CopyableCode code="search_issues" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Search issues endpoint allows you to programmatically search for issues within your organization. This endpoint returns a list of issues that match a given search query, following the event search syntax. The search results are limited to a maximum of 100 issues per request.</td>
</tr>
<tr>
    <td><a href="#update_issue_assignee"><CopyableCode code="update_issue_assignee" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-issue_id"><code>issue_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Update the assignee of an issue by `issue_id`.</td>
</tr>
<tr>
    <td><a href="#update_issue_state"><CopyableCode code="update_issue_state" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-issue_id"><code>issue_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Update the state of an issue by `issue_id`. Use this endpoint to move an issue between states such as `OPEN`, `RESOLVED`, or `IGNORED`.</td>
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
<tr id="parameter-issue_id">
    <td><CopyableCode code="issue_id" /></td>
    <td><code>string</code></td>
    <td>The identifier of the issue. (example: c1726a66-1f64-11ee-b338-da7ad0900002)</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-include">
    <td><CopyableCode code="include" /></td>
    <td><code>array</code></td>
    <td>Comma-separated list of relationship objects that should be included in the response.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_issue"
    values={[
        { label: 'get_issue', value: 'get_issue' }
    ]}
>
<TabItem value="get_issue">

Retrieve the full details for a specific error tracking issue, including attributes and relationships.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.service_management.issues
WHERE issue_id = '{{ issue_id }}' -- required
AND region = '{{ region }}' -- required
AND include = '{{ include }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="search_issues"
    values={[
        { label: 'search_issues', value: 'search_issues' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="search_issues">

Search issues endpoint allows you to programmatically search for issues within your organization. This endpoint returns a list of issues that match a given search query, following the event search syntax. The search results are limited to a maximum of 100 issues per request.

```sql
INSERT INTO datadog.service_management.issues (
data__data,
region,
include
)
SELECT 
'{{ data }}' /* required */,
'{{ region }}',
'{{ include }}'
RETURNING
data,
included
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: issues
  props:
    - name: region
      value: string
      description: Required parameter for the issues resource.
    - name: data
      value: object
      description: |
        Search issues request.
    - name: include
      value: array
      description: Comma-separated list of relationship objects that should be included in the response.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_issue_assignee"
    values={[
        { label: 'update_issue_assignee', value: 'update_issue_assignee' },
        { label: 'update_issue_state', value: 'update_issue_state' }
    ]}
>
<TabItem value="update_issue_assignee">

Update the assignee of an issue by `issue_id`.

```sql
EXEC datadog.service_management.issues.update_issue_assignee 
@issue_id='{{ issue_id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
<TabItem value="update_issue_state">

Update the state of an issue by `issue_id`. Use this endpoint to move an issue between states such as `OPEN`, `RESOLVED`, or `IGNORED`.

```sql
EXEC datadog.service_management.issues.update_issue_state 
@issue_id='{{ issue_id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
</Tabs>
