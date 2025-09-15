--- 
title: incident_services
hide_title: false
hide_table_of_contents: false
keywords:
  - incident_services
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

Creates, updates, deletes, gets or lists an <code>incident_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>incident_services</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.service_management.incident_services" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_incident_service"
    values={[
        { label: 'get_incident_service', value: 'get_incident_service' },
        { label: 'list_incident_services', value: 'list_incident_services' }
    ]}
>
<TabItem value="get_incident_service">

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
    <td>The incident service's ID. (example: 00000000-0000-0000-0000-000000000000)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The incident service's attributes from a response.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>The incident service's relationships.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Incident service resource type. (default: services, example: services)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_incident_services">

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
    <td>The incident service's ID. (example: 00000000-0000-0000-0000-000000000000)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The incident service's attributes from a response.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>The incident service's relationships.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Incident service resource type. (default: services, example: services)</td>
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
    <td><a href="#get_incident_service"><CopyableCode code="get_incident_service" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-service_id"><code>service_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Get details of an incident service. If the `include[users]` query parameter is provided,<br />the included attribute will contain the users related to these incident services.</td>
</tr>
<tr>
    <td><a href="#list_incident_services"><CopyableCode code="list_incident_services" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a>, <a href="#parameter-page[size]"><code>page[size]</code></a>, <a href="#parameter-page[offset]"><code>page[offset]</code></a>, <a href="#parameter-filter"><code>filter</code></a></td>
    <td>Get all incident services uploaded for the requesting user's organization. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these incident services.</td>
</tr>
<tr>
    <td><a href="#create_incident_service"><CopyableCode code="create_incident_service" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Creates a new incident service.</td>
</tr>
<tr>
    <td><a href="#update_incident_service"><CopyableCode code="update_incident_service" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-service_id"><code>service_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Updates an existing incident service. Only provide the attributes which should be updated as this request is a partial update.</td>
</tr>
<tr>
    <td><a href="#delete_incident_service"><CopyableCode code="delete_incident_service" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-service_id"><code>service_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Deletes an existing incident service.</td>
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
<tr id="parameter-service_id">
    <td><CopyableCode code="service_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the incident service.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>A search query that filters services by name.</td>
</tr>
<tr id="parameter-include">
    <td><CopyableCode code="include" /></td>
    <td><code>string</code></td>
    <td>Specifies which types of related objects should be included in the response.</td>
</tr>
<tr id="parameter-page[offset]">
    <td><CopyableCode code="page[offset]" /></td>
    <td><code>integer (int64)</code></td>
    <td>Specific offset to use as the beginning of the returned page.</td>
</tr>
<tr id="parameter-page[size]">
    <td><CopyableCode code="page[size]" /></td>
    <td><code>integer (int64)</code></td>
    <td>Size for a given page. The maximum allowed value is 100.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_incident_service"
    values={[
        { label: 'get_incident_service', value: 'get_incident_service' },
        { label: 'list_incident_services', value: 'list_incident_services' }
    ]}
>
<TabItem value="get_incident_service">

Get details of an incident service. If the `include[users]` query parameter is provided,<br />the included attribute will contain the users related to these incident services.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.service_management.incident_services
WHERE service_id = '{{ service_id }}' -- required
AND region = '{{ region }}' -- required
AND include = '{{ include }}'
;
```
</TabItem>
<TabItem value="list_incident_services">

Get all incident services uploaded for the requesting user's organization. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these incident services.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.service_management.incident_services
WHERE region = '{{ region }}' -- required
AND include = '{{ include }}'
AND page[size] = '{{ page[size] }}'
AND page[offset] = '{{ page[offset] }}'
AND filter = '{{ filter }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_incident_service"
    values={[
        { label: 'create_incident_service', value: 'create_incident_service' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_incident_service">

Creates a new incident service.

```sql
INSERT INTO datadog.service_management.incident_services (
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
- name: incident_services
  props:
    - name: region
      value: string
      description: Required parameter for the incident_services resource.
    - name: data
      value: object
      description: |
        Incident Service payload for create requests.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_incident_service"
    values={[
        { label: 'update_incident_service', value: 'update_incident_service' }
    ]}
>
<TabItem value="update_incident_service">

Updates an existing incident service. Only provide the attributes which should be updated as this request is a partial update.

```sql
UPDATE datadog.service_management.incident_services
SET 
data__data = '{{ data }}'
WHERE 
service_id = '{{ service_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data,
included;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_incident_service"
    values={[
        { label: 'delete_incident_service', value: 'delete_incident_service' }
    ]}
>
<TabItem value="delete_incident_service">

Deletes an existing incident service.

```sql
DELETE FROM datadog.service_management.incident_services
WHERE service_id = '{{ service_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
