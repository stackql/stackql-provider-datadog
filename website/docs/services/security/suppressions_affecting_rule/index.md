--- 
title: suppressions_affecting_rule
hide_title: false
hide_table_of_contents: false
keywords:
  - suppressions_affecting_rule
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

Creates, updates, deletes, gets or lists a <code>suppressions_affecting_rule</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>suppressions_affecting_rule</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.suppressions_affecting_rule" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_suppressions_affecting_rule"
    values={[
        { label: 'get_suppressions_affecting_rule', value: 'get_suppressions_affecting_rule' }
    ]}
>
<TabItem value="get_suppressions_affecting_rule">

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
    <td>The ID of the suppression rule. (example: 3dd-0uc-h1s)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The attributes of the suppression rule.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value should always be `suppressions`. (default: suppressions, example: suppressions)</td>
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
    <td><a href="#get_suppressions_affecting_rule"><CopyableCode code="get_suppressions_affecting_rule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-rule_id"><code>rule_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the list of suppressions that affect a specific existing rule by its ID.</td>
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
<tr id="parameter-rule_id">
    <td><CopyableCode code="rule_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the rule.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_suppressions_affecting_rule"
    values={[
        { label: 'get_suppressions_affecting_rule', value: 'get_suppressions_affecting_rule' }
    ]}
>
<TabItem value="get_suppressions_affecting_rule">

Get the list of suppressions that affect a specific existing rule by its ID.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.suppressions_affecting_rule
WHERE rule_id = '{{ rule_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
