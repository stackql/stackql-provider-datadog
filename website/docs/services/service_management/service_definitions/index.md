--- 
title: service_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - service_definitions
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

Creates, updates, deletes, gets or lists a <code>service_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>service_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.service_management.service_definitions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_service_definition"
    values={[
        { label: 'get_service_definition', value: 'get_service_definition' },
        { label: 'list_service_definitions', value: 'list_service_definitions' }
    ]}
>
<TabItem value="get_service_definition">

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
    <td>Service definition id.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Service definition attributes.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Service definition type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_service_definitions">

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
    <td>Service definition id.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Service definition attributes.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Service definition type.</td>
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
    <td><a href="#get_service_definition"><CopyableCode code="get_service_definition" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-service_name"><code>service_name</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-schema_version"><code>schema_version</code></a></td>
    <td>Get a single service definition from the Datadog Service Catalog.</td>
</tr>
<tr>
    <td><a href="#list_service_definitions"><CopyableCode code="list_service_definitions" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-page[size]"><code>page[size]</code></a>, <a href="#parameter-page[number]"><code>page[number]</code></a>, <a href="#parameter-schema_version"><code>schema_version</code></a></td>
    <td>Get a list of all service definitions from the Datadog Service Catalog.</td>
</tr>
<tr>
    <td><a href="#create_or_update_service_definitions"><CopyableCode code="create_or_update_service_definitions" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__schema-version"><code>data__schema-version</code></a>, <a href="#parameter-data__dd-service"><code>data__dd-service</code></a></td>
    <td></td>
    <td>Create or update service definition in the Datadog Service Catalog.</td>
</tr>
<tr>
    <td><a href="#delete_service_definition"><CopyableCode code="delete_service_definition" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-service_name"><code>service_name</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a single service definition in the Datadog Service Catalog.</td>
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
<tr id="parameter-service_name">
    <td><CopyableCode code="service_name" /></td>
    <td><code>string</code></td>
    <td>The name of the service.</td>
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
<tr id="parameter-schema_version">
    <td><CopyableCode code="schema_version" /></td>
    <td><code>string</code></td>
    <td>The schema version desired in the response.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_service_definition"
    values={[
        { label: 'get_service_definition', value: 'get_service_definition' },
        { label: 'list_service_definitions', value: 'list_service_definitions' }
    ]}
>
<TabItem value="get_service_definition">

Get a single service definition from the Datadog Service Catalog.

```sql
SELECT
id,
attributes,
type
FROM datadog.service_management.service_definitions
WHERE service_name = '{{ service_name }}' -- required
AND region = '{{ region }}' -- required
AND schema_version = '{{ schema_version }}'
;
```
</TabItem>
<TabItem value="list_service_definitions">

Get a list of all service definitions from the Datadog Service Catalog.

```sql
SELECT
id,
attributes,
type
FROM datadog.service_management.service_definitions
WHERE region = '{{ region }}' -- required
AND page[size] = '{{ page[size] }}'
AND page[number] = '{{ page[number] }}'
AND schema_version = '{{ schema_version }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update_service_definitions"
    values={[
        { label: 'create_or_update_service_definitions', value: 'create_or_update_service_definitions' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update_service_definitions">

Create or update service definition in the Datadog Service Catalog.

```sql
INSERT INTO datadog.service_management.service_definitions (
data__application,
data__ci-pipeline-fingerprints,
data__contacts,
data__dd-service,
data__description,
data__extensions,
data__integrations,
data__languages,
data__lifecycle,
data__links,
data__schema-version,
data__tags,
data__team,
data__tier,
data__type,
region
)
SELECT 
'{{ application }}',
'{{ ci-pipeline-fingerprints }}',
'{{ contacts }}',
'{{ dd-service }}' /* required */,
'{{ description }}',
'{{ extensions }}',
'{{ integrations }}',
'{{ languages }}',
'{{ lifecycle }}',
'{{ links }}',
'{{ schema-version }}' /* required */,
'{{ tags }}',
'{{ team }}',
'{{ tier }}',
'{{ type }}',
'{{ region }}'
RETURNING
data
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: service_definitions
  props:
    - name: region
      value: string
      description: Required parameter for the service_definitions resource.
    - name: application
      value: string
      description: |
        Identifier for a group of related services serving a product feature, which the service is a part of.
    - name: ci-pipeline-fingerprints
      value: array
      description: |
        A set of CI fingerprints.
    - name: contacts
      value: array
      description: |
        A list of contacts related to the services.
    - name: dd-service
      value: string
      description: |
        Unique identifier of the service. Must be unique across all services and is used to match with a service in Datadog.
    - name: description
      value: string
      description: |
        A short description of the service.
    - name: extensions
      value: object
      description: |
        Extensions to v2.2 schema.
    - name: integrations
      value: object
      description: |
        Third party integrations that Datadog supports.
    - name: languages
      value: array
      description: |
        The service's programming language. Datadog recognizes the following languages: `dotnet`, `go`, `java`, `js`, `php`, `python`, `ruby`, and `c++`.
    - name: lifecycle
      value: string
      description: |
        The current life cycle phase of the service.
    - name: links
      value: array
      description: |
        A list of links related to the services.
    - name: schema-version
      value: string
      description: |
        Schema version being used.
      valid_values: ['v2.2']
      default: v2.2
    - name: tags
      value: array
      description: |
        A set of custom tags.
    - name: team
      value: string
      description: |
        Team that owns the service. It is used to locate a team defined in Datadog Teams if it exists.
    - name: tier
      value: string
      description: |
        Importance of the service.
    - name: type
      value: string
      description: |
        The type of service.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_service_definition"
    values={[
        { label: 'delete_service_definition', value: 'delete_service_definition' }
    ]}
>
<TabItem value="delete_service_definition">

Delete a single service definition in the Datadog Service Catalog.

```sql
DELETE FROM datadog.service_management.service_definitions
WHERE service_name = '{{ service_name }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
