--- 
title: incident_notification_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - incident_notification_rules
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

Creates, updates, deletes, gets or lists an <code>incident_notification_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>incident_notification_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.service_management.incident_notification_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_incident_notification_rule"
    values={[
        { label: 'get_incident_notification_rule', value: 'get_incident_notification_rule' },
        { label: 'list_incident_notification_rules', value: 'list_incident_notification_rules' }
    ]}
>
<TabItem value="get_incident_notification_rule">

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
    <td>The unique identifier of the notification rule. (example: 00000000-0000-0000-0000-000000000001)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The notification rule's attributes.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>The notification rule's resource relationships.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Notification rules resource type. (example: incident_notification_rules)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_incident_notification_rules">

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
    <td>The unique identifier of the notification rule. (example: 00000000-0000-0000-0000-000000000001)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The notification rule's attributes.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>The notification rule's resource relationships.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Notification rules resource type. (example: incident_notification_rules)</td>
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
    <td><a href="#get_incident_notification_rule"><CopyableCode code="get_incident_notification_rule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Retrieves a specific notification rule by its ID.</td>
</tr>
<tr>
    <td><a href="#list_incident_notification_rules"><CopyableCode code="list_incident_notification_rules" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Lists all notification rules for the organization. Optionally filter by incident type.</td>
</tr>
<tr>
    <td><a href="#create_incident_notification_rule"><CopyableCode code="create_incident_notification_rule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Creates a new notification rule.</td>
</tr>
<tr>
    <td><a href="#update_incident_notification_rule"><CopyableCode code="update_incident_notification_rule" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Updates an existing notification rule with a complete replacement.</td>
</tr>
<tr>
    <td><a href="#delete_incident_notification_rule"><CopyableCode code="delete_incident_notification_rule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Deletes a notification rule by its ID.</td>
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
    <td>The ID of the notification rule.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-include">
    <td><CopyableCode code="include" /></td>
    <td><code>string</code></td>
    <td>Comma-separated list of resources to include. Supported values: `created_by_user`, `last_modified_by_user`, `incident_type`, `notification_template` </td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_incident_notification_rule"
    values={[
        { label: 'get_incident_notification_rule', value: 'get_incident_notification_rule' },
        { label: 'list_incident_notification_rules', value: 'list_incident_notification_rules' }
    ]}
>
<TabItem value="get_incident_notification_rule">

Retrieves a specific notification rule by its ID.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.service_management.incident_notification_rules
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
AND include = '{{ include }}'
;
```
</TabItem>
<TabItem value="list_incident_notification_rules">

Lists all notification rules for the organization. Optionally filter by incident type.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.service_management.incident_notification_rules
WHERE region = '{{ region }}' -- required
AND include = '{{ include }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_incident_notification_rule"
    values={[
        { label: 'create_incident_notification_rule', value: 'create_incident_notification_rule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_incident_notification_rule">

Creates a new notification rule.

```sql
INSERT INTO datadog.service_management.incident_notification_rules (
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
- name: incident_notification_rules
  props:
    - name: region
      value: string
      description: Required parameter for the incident_notification_rules resource.
    - name: data
      value: object
      description: |
        Notification rule data for a create request.
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update_incident_notification_rule"
    values={[
        { label: 'update_incident_notification_rule', value: 'update_incident_notification_rule' }
    ]}
>
<TabItem value="update_incident_notification_rule">

Updates an existing notification rule with a complete replacement.

```sql
REPLACE datadog.service_management.incident_notification_rules
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
    defaultValue="delete_incident_notification_rule"
    values={[
        { label: 'delete_incident_notification_rule', value: 'delete_incident_notification_rule' }
    ]}
>
<TabItem value="delete_incident_notification_rule">

Deletes a notification rule by its ID.

```sql
DELETE FROM datadog.service_management.incident_notification_rules
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
AND include = '{{ include }}'
;
```
</TabItem>
</Tabs>
