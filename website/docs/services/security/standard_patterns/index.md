--- 
title: standard_patterns
hide_title: false
hide_table_of_contents: false
keywords:
  - standard_patterns
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

Creates, updates, deletes, gets or lists a <code>standard_patterns</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>standard_patterns</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.standard_patterns" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_standard_patterns"
    values={[
        { label: 'list_standard_patterns', value: 'list_standard_patterns' }
    ]}
>
<TabItem value="list_standard_patterns">

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
    <td>ID of the standard pattern.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes of the Sensitive Data Scanner standard pattern.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Sensitive Data Scanner standard pattern type. (default: sensitive_data_scanner_standard_pattern, example: sensitive_data_scanner_standard_pattern)</td>
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
    <td><a href="#list_standard_patterns"><CopyableCode code="list_standard_patterns" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Returns all standard patterns.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_standard_patterns"
    values={[
        { label: 'list_standard_patterns', value: 'list_standard_patterns' }
    ]}
>
<TabItem value="list_standard_patterns">

Returns all standard patterns.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.standard_patterns
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
