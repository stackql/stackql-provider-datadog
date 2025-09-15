--- 
title: suppressions_affecting_future_rule
hide_title: false
hide_table_of_contents: false
keywords:
  - suppressions_affecting_future_rule
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

Creates, updates, deletes, gets or lists a <code>suppressions_affecting_future_rule</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>suppressions_affecting_future_rule</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.suppressions_affecting_future_rule" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#get_suppressions_affecting_future_rule"><CopyableCode code="get_suppressions_affecting_future_rule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__isEnabled"><code>data__isEnabled</code></a>, <a href="#parameter-data__queries"><code>data__queries</code></a>, <a href="#parameter-data__options"><code>data__options</code></a>, <a href="#parameter-data__cases"><code>data__cases</code></a>, <a href="#parameter-data__message"><code>data__message</code></a></td>
    <td></td>
    <td>Get the list of suppressions that would affect a rule.</td>
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

## `INSERT` examples

<Tabs
    defaultValue="get_suppressions_affecting_future_rule"
    values={[
        { label: 'get_suppressions_affecting_future_rule', value: 'get_suppressions_affecting_future_rule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="get_suppressions_affecting_future_rule">

Get the list of suppressions that would affect a rule.

```sql
INSERT INTO datadog.security.suppressions_affecting_future_rule (
data__calculatedFields,
data__cases,
data__filters,
data__groupSignalsBy,
data__hasExtendedTitle,
data__isEnabled,
data__message,
data__name,
data__options,
data__queries,
data__referenceTables,
data__schedulingOptions,
data__tags,
data__thirdPartyCases,
data__type,
region
)
SELECT 
'{{ calculatedFields }}',
'{{ cases }}' /* required */,
'{{ filters }}',
'{{ groupSignalsBy }}',
{{ hasExtendedTitle }},
{{ isEnabled }} /* required */,
'{{ message }}' /* required */,
'{{ name }}' /* required */,
'{{ options }}' /* required */,
'{{ queries }}' /* required */,
'{{ referenceTables }}',
'{{ schedulingOptions }}',
'{{ tags }}',
'{{ thirdPartyCases }}',
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
- name: suppressions_affecting_future_rule
  props:
    - name: region
      value: string
      description: Required parameter for the suppressions_affecting_future_rule resource.
    - name: calculatedFields
      value: array
      description: |
        Calculated fields. Only allowed for scheduled rules - in other words, when schedulingOptions is also defined.
    - name: cases
      value: array
      description: |
        Cases for generating signals.
    - name: filters
      value: array
      description: |
        Additional queries to filter matched events before they are processed. This field is deprecated for log detection, signal correlation, and workload security rules.
    - name: groupSignalsBy
      value: array
      description: |
        Additional grouping to perform on top of the existing groups in the query section. Must be a subset of the existing groups.
    - name: hasExtendedTitle
      value: boolean
      description: |
        Whether the notifications include the triggering group-by values in their title.
    - name: isEnabled
      value: boolean
      description: |
        Whether the rule is enabled.
    - name: message
      value: string
      description: |
        Message for generated signals.
    - name: name
      value: string
      description: |
        The name of the rule.
    - name: options
      value: object
      description: |
        Options.
    - name: queries
      value: array
      description: |
        Queries for selecting logs which are part of the rule.
    - name: referenceTables
      value: array
      description: |
        Reference tables for the rule.
    - name: schedulingOptions
      value: object
      description: |
        Options for scheduled rules. When this field is present, the rule runs based on the schedule. When absent, it runs real-time on ingested logs.
    - name: tags
      value: array
      description: |
        Tags for generated signals.
    - name: thirdPartyCases
      value: array
      description: |
        Cases for generating signals from third-party rules. Only available for third-party rules.
    - name: type
      value: string
      description: |
        The rule type.
      valid_values: ['api_security', 'application_security', 'log_detection', 'workload_security']
```
</TabItem>
</Tabs>
