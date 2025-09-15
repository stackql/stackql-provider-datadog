--- 
title: incident_notification_templates
hide_title: false
hide_table_of_contents: false
keywords:
  - incident_notification_templates
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

Creates, updates, deletes, gets or lists an <code>incident_notification_templates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>incident_notification_templates</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.service_management.incident_notification_templates" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_incident_notification_template"
    values={[
        { label: 'get_incident_notification_template', value: 'get_incident_notification_template' },
        { label: 'list_incident_notification_templates', value: 'list_incident_notification_templates' }
    ]}
>
<TabItem value="get_incident_notification_template">

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
    <td><code>string (uuid)</code></td>
    <td>The unique identifier of the notification template. (example: 00000000-0000-0000-0000-000000000001)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The notification template's attributes.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>The notification template's resource relationships.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Notification templates resource type. (example: notification_templates)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_incident_notification_templates">

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
    <td><code>string (uuid)</code></td>
    <td>The unique identifier of the notification template. (example: 00000000-0000-0000-0000-000000000001)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The notification template's attributes.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>The notification template's resource relationships.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Notification templates resource type. (example: notification_templates)</td>
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
    <td><a href="#get_incident_notification_template"><CopyableCode code="get_incident_notification_template" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Retrieves a specific notification template by its ID.</td>
</tr>
<tr>
    <td><a href="#list_incident_notification_templates"><CopyableCode code="list_incident_notification_templates" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-filter[incident-type]"><code>filter[incident-type]</code></a>, <a href="#parameter-include"><code>include</code></a></td>
    <td>Lists all notification templates. Optionally filter by incident type.</td>
</tr>
<tr>
    <td><a href="#create_incident_notification_template"><CopyableCode code="create_incident_notification_template" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Creates a new notification template.</td>
</tr>
<tr>
    <td><a href="#update_incident_notification_template"><CopyableCode code="update_incident_notification_template" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Updates an existing notification template's attributes.</td>
</tr>
<tr>
    <td><a href="#delete_incident_notification_template"><CopyableCode code="delete_incident_notification_template" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Deletes a notification template by its ID.</td>
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
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the notification template.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-filter[incident-type]">
    <td><CopyableCode code="filter[incident-type]" /></td>
    <td><code>string (uuid)</code></td>
    <td>Optional incident type ID filter.</td>
</tr>
<tr id="parameter-include">
    <td><CopyableCode code="include" /></td>
    <td><code>string</code></td>
    <td>Comma-separated list of relationships to include. Supported values: `created_by_user`, `last_modified_by_user`, `incident_type` </td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_incident_notification_template"
    values={[
        { label: 'get_incident_notification_template', value: 'get_incident_notification_template' },
        { label: 'list_incident_notification_templates', value: 'list_incident_notification_templates' }
    ]}
>
<TabItem value="get_incident_notification_template">

Retrieves a specific notification template by its ID.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.service_management.incident_notification_templates
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
AND include = '{{ include }}'
;
```
</TabItem>
<TabItem value="list_incident_notification_templates">

Lists all notification templates. Optionally filter by incident type.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.service_management.incident_notification_templates
WHERE region = '{{ region }}' -- required
AND filter[incident-type] = '{{ filter[incident-type] }}'
AND include = '{{ include }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_incident_notification_template"
    values={[
        { label: 'create_incident_notification_template', value: 'create_incident_notification_template' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_incident_notification_template">

Creates a new notification template.

```sql
INSERT INTO datadog.service_management.incident_notification_templates (
data__data,
region
)
SELECT 
'{{ data }}' /* required */,
'{{ region }}'
RETURNING
data,
included
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: incident_notification_templates
  props:
    - name: region
      value: string
      description: Required parameter for the incident_notification_templates resource.
    - name: data
      value: object
      description: |
        Notification template data for a create request.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_incident_notification_template"
    values={[
        { label: 'update_incident_notification_template', value: 'update_incident_notification_template' }
    ]}
>
<TabItem value="update_incident_notification_template">

Updates an existing notification template's attributes.

```sql
UPDATE datadog.service_management.incident_notification_templates
SET 
data__data = '{{ data }}'
WHERE 
id = '{{ id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
AND include = '{{ include}}'
RETURNING
data,
included;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_incident_notification_template"
    values={[
        { label: 'delete_incident_notification_template', value: 'delete_incident_notification_template' }
    ]}
>
<TabItem value="delete_incident_notification_template">

Deletes a notification template by its ID.

```sql
DELETE FROM datadog.service_management.incident_notification_templates
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
AND include = '{{ include }}'
;
```
</TabItem>
</Tabs>
