--- 
title: incidents
hide_title: false
hide_table_of_contents: false
keywords:
  - incidents
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

Creates, updates, deletes, gets or lists an <code>incidents</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>incidents</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.service_management.incidents" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_incident"
    values={[
        { label: 'get_incident', value: 'get_incident' },
        { label: 'list_incidents', value: 'list_incidents' },
        { label: 'search_incidents', value: 'search_incidents' }
    ]}
>
<TabItem value="get_incident">

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
    <td>The incident's ID. (example: 00000000-0000-0000-1234-000000000000)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The incident's attributes from a response.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>The incident's relationships from a response.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Incident resource type. (default: incidents, example: incidents)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_incidents">

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
    <td>The incident's ID. (example: 00000000-0000-0000-1234-000000000000)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The incident's attributes from a response.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>The incident's relationships from a response.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Incident resource type. (default: incidents, example: incidents)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="search_incidents">

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
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes returned by an incident search.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Incident search result type. (default: incidents_search_results, example: incidents_search_results)</td>
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
    <td><a href="#get_incident"><CopyableCode code="get_incident" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-incident_id"><code>incident_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Get the details of an incident by `incident_id`.</td>
</tr>
<tr>
    <td><a href="#list_incidents"><CopyableCode code="list_incidents" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a>, <a href="#parameter-page[size]"><code>page[size]</code></a>, <a href="#parameter-page[offset]"><code>page[offset]</code></a></td>
    <td>Get all incidents for the user's organization.</td>
</tr>
<tr>
    <td><a href="#search_incidents"><CopyableCode code="search_incidents" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-query"><code>query</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a>, <a href="#parameter-sort"><code>sort</code></a>, <a href="#parameter-page[size]"><code>page[size]</code></a>, <a href="#parameter-page[offset]"><code>page[offset]</code></a></td>
    <td>Search for incidents matching a certain query.</td>
</tr>
<tr>
    <td><a href="#create_incident"><CopyableCode code="create_incident" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create an incident.</td>
</tr>
<tr>
    <td><a href="#update_incident"><CopyableCode code="update_incident" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-incident_id"><code>incident_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Updates an incident. Provide only the attributes that should be updated as this request is a partial update.</td>
</tr>
<tr>
    <td><a href="#delete_incident"><CopyableCode code="delete_incident" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-incident_id"><code>incident_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Deletes an existing incident from the users organization.</td>
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
<tr id="parameter-query">
    <td><CopyableCode code="query" /></td>
    <td><code>string</code></td>
    <td>Specifies which incidents should be returned. The query can contain any number of incident facets joined by `ANDs`, along with multiple values for each of those facets joined by `OR`s. For example: `state:active AND severity:(SEV-2 OR SEV-1)`.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-include">
    <td><CopyableCode code="include" /></td>
    <td><code>array</code></td>
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
<tr id="parameter-sort">
    <td><CopyableCode code="sort" /></td>
    <td><code>string</code></td>
    <td>Specifies the order of returned incidents.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_incident"
    values={[
        { label: 'get_incident', value: 'get_incident' },
        { label: 'list_incidents', value: 'list_incidents' },
        { label: 'search_incidents', value: 'search_incidents' }
    ]}
>
<TabItem value="get_incident">

Get the details of an incident by `incident_id`.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.service_management.incidents
WHERE incident_id = '{{ incident_id }}' -- required
AND region = '{{ region }}' -- required
AND include = '{{ include }}'
;
```
</TabItem>
<TabItem value="list_incidents">

Get all incidents for the user's organization.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.service_management.incidents
WHERE region = '{{ region }}' -- required
AND include = '{{ include }}'
AND page[size] = '{{ page[size] }}'
AND page[offset] = '{{ page[offset] }}'
;
```
</TabItem>
<TabItem value="search_incidents">

Search for incidents matching a certain query.

```sql
SELECT
attributes,
type
FROM datadog.service_management.incidents
WHERE query = '{{ query }}' -- required
AND region = '{{ region }}' -- required
AND include = '{{ include }}'
AND sort = '{{ sort }}'
AND page[size] = '{{ page[size] }}'
AND page[offset] = '{{ page[offset] }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_incident"
    values={[
        { label: 'create_incident', value: 'create_incident' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_incident">

Create an incident.

```sql
INSERT INTO datadog.service_management.incidents (
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
- name: incidents
  props:
    - name: region
      value: string
      description: Required parameter for the incidents resource.
    - name: data
      value: object
      description: |
        Incident data for a create request.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_incident"
    values={[
        { label: 'update_incident', value: 'update_incident' }
    ]}
>
<TabItem value="update_incident">

Updates an incident. Provide only the attributes that should be updated as this request is a partial update.

```sql
UPDATE datadog.service_management.incidents
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


## `DELETE` examples

<Tabs
    defaultValue="delete_incident"
    values={[
        { label: 'delete_incident', value: 'delete_incident' }
    ]}
>
<TabItem value="delete_incident">

Deletes an existing incident from the users organization.

```sql
DELETE FROM datadog.service_management.incidents
WHERE incident_id = '{{ incident_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
