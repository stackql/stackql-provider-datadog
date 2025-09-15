--- 
title: filters
hide_title: false
hide_table_of_contents: false
keywords:
  - filters
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

Creates, updates, deletes, gets or lists a <code>filters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>filters</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.filters" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_security_filter"
    values={[
        { label: 'get_security_filter', value: 'get_security_filter' },
        { label: 'list_security_filters', value: 'list_security_filters' }
    ]}
>
<TabItem value="get_security_filter">

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
    <td>The ID of the security filter. (example: 3dd-0uc-h1s)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The object describing a security filter.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value should always be `security_filters`. (default: security_filters, example: security_filters)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_security_filters">

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
    <td>The ID of the security filter. (example: 3dd-0uc-h1s)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The object describing a security filter.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value should always be `security_filters`. (default: security_filters, example: security_filters)</td>
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
    <td><a href="#get_security_filter"><CopyableCode code="get_security_filter" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-security_filter_id"><code>security_filter_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the details of a specific security filter.<br /><br />See the [security filter guide](https://docs.datadoghq.com/security_platform/guide/how-to-setup-security-filters-using-security-monitoring-api/)<br />for more examples.</td>
</tr>
<tr>
    <td><a href="#list_security_filters"><CopyableCode code="list_security_filters" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the list of configured security filters with their definitions.</td>
</tr>
<tr>
    <td><a href="#create_security_filter"><CopyableCode code="create_security_filter" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a security filter.<br /><br />See the [security filter guide](https://docs.datadoghq.com/security_platform/guide/how-to-setup-security-filters-using-security-monitoring-api/)<br />for more examples.</td>
</tr>
<tr>
    <td><a href="#update_security_filter"><CopyableCode code="update_security_filter" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-security_filter_id"><code>security_filter_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update a specific security filter.<br />Returns the security filter object when the request is successful.</td>
</tr>
<tr>
    <td><a href="#delete_security_filter"><CopyableCode code="delete_security_filter" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-security_filter_id"><code>security_filter_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a specific security filter.</td>
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
<tr id="parameter-security_filter_id">
    <td><CopyableCode code="security_filter_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the security filter.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_security_filter"
    values={[
        { label: 'get_security_filter', value: 'get_security_filter' },
        { label: 'list_security_filters', value: 'list_security_filters' }
    ]}
>
<TabItem value="get_security_filter">

Get the details of a specific security filter.<br /><br />See the [security filter guide](https://docs.datadoghq.com/security_platform/guide/how-to-setup-security-filters-using-security-monitoring-api/)<br />for more examples.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.filters
WHERE security_filter_id = '{{ security_filter_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_security_filters">

Get the list of configured security filters with their definitions.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.filters
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_security_filter"
    values={[
        { label: 'create_security_filter', value: 'create_security_filter' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_security_filter">

Create a security filter.<br /><br />See the [security filter guide](https://docs.datadoghq.com/security_platform/guide/how-to-setup-security-filters-using-security-monitoring-api/)<br />for more examples.

```sql
INSERT INTO datadog.security.filters (
data__data,
region
)
SELECT 
'{{ data }}' /* required */,
'{{ region }}'
RETURNING
data,
meta
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: filters
  props:
    - name: region
      value: string
      description: Required parameter for the filters resource.
    - name: data
      value: object
      description: |
        Object for a single security filter.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_security_filter"
    values={[
        { label: 'update_security_filter', value: 'update_security_filter' }
    ]}
>
<TabItem value="update_security_filter">

Update a specific security filter.<br />Returns the security filter object when the request is successful.

```sql
UPDATE datadog.security.filters
SET 
data__data = '{{ data }}'
WHERE 
security_filter_id = '{{ security_filter_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data,
meta;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_security_filter"
    values={[
        { label: 'delete_security_filter', value: 'delete_security_filter' }
    ]}
>
<TabItem value="delete_security_filter">

Delete a specific security filter.

```sql
DELETE FROM datadog.security.filters
WHERE security_filter_id = '{{ security_filter_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
