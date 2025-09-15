--- 
title: scorecard_outcomes
hide_title: false
hide_table_of_contents: false
keywords:
  - scorecard_outcomes
  - apm
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

Creates, updates, deletes, gets or lists a <code>scorecard_outcomes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scorecard_outcomes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.apm.scorecard_outcomes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_scorecard_outcomes"
    values={[
        { label: 'list_scorecard_outcomes', value: 'list_scorecard_outcomes' }
    ]}
>
<TabItem value="list_scorecard_outcomes">

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
    <td>The unique ID for a rule outcome.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The JSON:API attributes for an outcome.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>The JSON:API relationship to a scorecard rule.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The JSON:API type for an outcome. (default: outcome, example: outcome)</td>
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
    <td><a href="#list_scorecard_outcomes"><CopyableCode code="list_scorecard_outcomes" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-page[size]"><code>page[size]</code></a>, <a href="#parameter-page[offset]"><code>page[offset]</code></a>, <a href="#parameter-include"><code>include</code></a>, <a href="#parameter-fields[outcome]"><code>fields[outcome]</code></a>, <a href="#parameter-fields[rule]"><code>fields[rule]</code></a>, <a href="#parameter-filter[outcome][service_name]"><code>filter[outcome][service_name]</code></a>, <a href="#parameter-filter[outcome][state]"><code>filter[outcome][state]</code></a>, <a href="#parameter-filter[rule][enabled]"><code>filter[rule][enabled]</code></a>, <a href="#parameter-filter[rule][id]"><code>filter[rule][id]</code></a>, <a href="#parameter-filter[rule][name]"><code>filter[rule][name]</code></a></td>
    <td>Fetches all rule outcomes.</td>
</tr>
<tr>
    <td><a href="#create_scorecard_outcomes_batch"><CopyableCode code="create_scorecard_outcomes_batch" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Sets multiple service-rule outcomes in a single batched request.</td>
</tr>
<tr>
    <td><a href="#update_scorecard_outcomes_async"><CopyableCode code="update_scorecard_outcomes_async" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Updates multiple scorecard rule outcomes in a single batched request.</td>
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
<tr id="parameter-fields[outcome]">
    <td><CopyableCode code="fields[outcome]" /></td>
    <td><code>string</code></td>
    <td>Return only specified values in the outcome attributes.</td>
</tr>
<tr id="parameter-fields[rule]">
    <td><CopyableCode code="fields[rule]" /></td>
    <td><code>string</code></td>
    <td>Return only specified values in the included rule details.</td>
</tr>
<tr id="parameter-filter[outcome][service_name]">
    <td><CopyableCode code="filter[outcome][service_name]" /></td>
    <td><code>string</code></td>
    <td>Filter the outcomes on a specific service name.</td>
</tr>
<tr id="parameter-filter[outcome][state]">
    <td><CopyableCode code="filter[outcome][state]" /></td>
    <td><code>string</code></td>
    <td>Filter the outcomes by a specific state.</td>
</tr>
<tr id="parameter-filter[rule][enabled]">
    <td><CopyableCode code="filter[rule][enabled]" /></td>
    <td><code>boolean</code></td>
    <td>Filter outcomes on whether a rule is enabled/disabled.</td>
</tr>
<tr id="parameter-filter[rule][id]">
    <td><CopyableCode code="filter[rule][id]" /></td>
    <td><code>string</code></td>
    <td>Filter outcomes based on rule ID.</td>
</tr>
<tr id="parameter-filter[rule][name]">
    <td><CopyableCode code="filter[rule][name]" /></td>
    <td><code>string</code></td>
    <td>Filter outcomes based on rule name.</td>
</tr>
<tr id="parameter-include">
    <td><CopyableCode code="include" /></td>
    <td><code>string</code></td>
    <td>Include related rule details in the response.</td>
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
    defaultValue="list_scorecard_outcomes"
    values={[
        { label: 'list_scorecard_outcomes', value: 'list_scorecard_outcomes' }
    ]}
>
<TabItem value="list_scorecard_outcomes">

Fetches all rule outcomes.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.apm.scorecard_outcomes
WHERE region = '{{ region }}' -- required
AND page[size] = '{{ page[size] }}'
AND page[offset] = '{{ page[offset] }}'
AND include = '{{ include }}'
AND fields[outcome] = '{{ fields[outcome] }}'
AND fields[rule] = '{{ fields[rule] }}'
AND filter[outcome][service_name] = '{{ filter[outcome][service_name] }}'
AND filter[outcome][state] = '{{ filter[outcome][state] }}'
AND filter[rule][enabled] = '{{ filter[rule][enabled] }}'
AND filter[rule][id] = '{{ filter[rule][id] }}'
AND filter[rule][name] = '{{ filter[rule][name] }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_scorecard_outcomes_batch"
    values={[
        { label: 'create_scorecard_outcomes_batch', value: 'create_scorecard_outcomes_batch' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_scorecard_outcomes_batch">

Sets multiple service-rule outcomes in a single batched request.

```sql
INSERT INTO datadog.apm.scorecard_outcomes (
data__data,
region
)
SELECT 
'{{ data }}',
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
- name: scorecard_outcomes
  props:
    - name: region
      value: string
      description: Required parameter for the scorecard_outcomes resource.
    - name: data
      value: object
      description: |
        Scorecard outcomes batch request data.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_scorecard_outcomes_async"
    values={[
        { label: 'update_scorecard_outcomes_async', value: 'update_scorecard_outcomes_async' }
    ]}
>
<TabItem value="update_scorecard_outcomes_async">

Updates multiple scorecard rule outcomes in a single batched request.

```sql
EXEC datadog.apm.scorecard_outcomes.update_scorecard_outcomes_async 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
</Tabs>
