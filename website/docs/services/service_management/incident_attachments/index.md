--- 
title: incident_attachments
hide_title: false
hide_table_of_contents: false
keywords:
  - incident_attachments
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

Creates, updates, deletes, gets or lists an <code>incident_attachments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>incident_attachments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.service_management.incident_attachments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_incident_attachments"
    values={[
        { label: 'list_incident_attachments', value: 'list_incident_attachments' }
    ]}
>
<TabItem value="list_incident_attachments">

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
    <td>A unique identifier that represents the incident attachment. (example: 00000000-abcd-0001-0000-000000000000)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code></code></td>
    <td>The attributes object for an attachment.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>The incident attachment's relationships.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The incident attachment resource type. (default: incident_attachments, example: incident_attachments)</td>
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
    <td><a href="#list_incident_attachments"><CopyableCode code="list_incident_attachments" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-incident_id"><code>incident_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a>, <a href="#parameter-filter[attachment_type]"><code>filter[attachment_type]</code></a></td>
    <td>Get all attachments for a given incident.</td>
</tr>
<tr>
    <td><a href="#update_incident_attachments"><CopyableCode code="update_incident_attachments" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-incident_id"><code>incident_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>The bulk update endpoint for creating, updating, and deleting attachments for a given incident.</td>
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
<tr id="parameter-incident_id">
    <td><CopyableCode code="incident_id" /></td>
    <td><code>string</code></td>
    <td>The UUID of the incident.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-filter[attachment_type]">
    <td><CopyableCode code="filter[attachment_type]" /></td>
    <td><code>array</code></td>
    <td>Specifies which types of attachments are included in the response.</td>
</tr>
<tr id="parameter-include">
    <td><CopyableCode code="include" /></td>
    <td><code>array</code></td>
    <td>Specifies which types of related objects are included in the response.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_incident_attachments"
    values={[
        { label: 'list_incident_attachments', value: 'list_incident_attachments' }
    ]}
>
<TabItem value="list_incident_attachments">

Get all attachments for a given incident.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.service_management.incident_attachments
WHERE incident_id = '{{ incident_id }}' -- required
AND region = '{{ region }}' -- required
AND include = '{{ include }}'
AND filter[attachment_type] = '{{ filter[attachment_type] }}'
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_incident_attachments"
    values={[
        { label: 'update_incident_attachments', value: 'update_incident_attachments' }
    ]}
>
<TabItem value="update_incident_attachments">

The bulk update endpoint for creating, updating, and deleting attachments for a given incident.

```sql
UPDATE datadog.service_management.incident_attachments
SET 
data__data = '{{ data }}'
WHERE 
incident_id = '{{ incident_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
AND include = '{{ include}}'
RETURNING
data,
included;
```
</TabItem>
</Tabs>
