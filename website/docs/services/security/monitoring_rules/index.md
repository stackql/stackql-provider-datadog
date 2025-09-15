--- 
title: monitoring_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - monitoring_rules
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

Creates, updates, deletes, gets or lists a <code>monitoring_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>monitoring_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.monitoring_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_security_monitoring_rule"
    values={[
        { label: 'get_security_monitoring_rule', value: 'get_security_monitoring_rule' },
        { label: 'list_security_monitoring_rules', value: 'list_security_monitoring_rules' }
    ]}
>
<TabItem value="get_security_monitoring_rule">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
</tbody>
</table>
</TabItem>
<TabItem value="list_security_monitoring_rules">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
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
    <td><a href="#get_security_monitoring_rule"><CopyableCode code="get_security_monitoring_rule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-rule_id"><code>rule_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a rule's details.</td>
</tr>
<tr>
    <td><a href="#list_security_monitoring_rules"><CopyableCode code="list_security_monitoring_rules" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-page[size]"><code>page[size]</code></a>, <a href="#parameter-page[number]"><code>page[number]</code></a></td>
    <td>List rules.</td>
</tr>
<tr>
    <td><a href="#create_security_monitoring_rule"><CopyableCode code="create_security_monitoring_rule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__isEnabled"><code>data__isEnabled</code></a>, <a href="#parameter-data__queries"><code>data__queries</code></a>, <a href="#parameter-data__options"><code>data__options</code></a>, <a href="#parameter-data__cases"><code>data__cases</code></a>, <a href="#parameter-data__message"><code>data__message</code></a></td>
    <td></td>
    <td>Create a detection rule.</td>
</tr>
<tr>
    <td><a href="#update_security_monitoring_rule"><CopyableCode code="update_security_monitoring_rule" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-rule_id"><code>rule_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Update an existing rule. When updating `cases`, `queries` or `options`, the whole field<br />must be included. For example, when modifying a query all queries must be included.<br />Default rules can only be updated to be enabled, to change notifications, or to update<br />the tags (default tags cannot be removed).</td>
</tr>
<tr>
    <td><a href="#delete_security_monitoring_rule"><CopyableCode code="delete_security_monitoring_rule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-rule_id"><code>rule_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete an existing rule. Default rules cannot be deleted.</td>
</tr>
<tr>
    <td><a href="#convert_security_monitoring_rule_from_jsonto_terraform"><CopyableCode code="convert_security_monitoring_rule_from_jsonto_terraform" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-isEnabled"><code>isEnabled</code></a>, <a href="#parameter-queries"><code>queries</code></a>, <a href="#parameter-options"><code>options</code></a>, <a href="#parameter-cases"><code>cases</code></a>, <a href="#parameter-message"><code>message</code></a></td>
    <td></td>
    <td>Convert a rule that doesn't (yet) exist from JSON to Terraform for datadog provider<br />resource datadog_security_monitoring_rule.</td>
</tr>
<tr>
    <td><a href="#test_security_monitoring_rule"><CopyableCode code="test_security_monitoring_rule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Test a rule.</td>
</tr>
<tr>
    <td><a href="#validate_security_monitoring_rule"><CopyableCode code="validate_security_monitoring_rule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-isEnabled"><code>isEnabled</code></a>, <a href="#parameter-queries"><code>queries</code></a>, <a href="#parameter-options"><code>options</code></a>, <a href="#parameter-cases"><code>cases</code></a>, <a href="#parameter-message"><code>message</code></a></td>
    <td></td>
    <td>Validate a detection rule.</td>
</tr>
<tr>
    <td><a href="#convert_existing_security_monitoring_rule"><CopyableCode code="convert_existing_security_monitoring_rule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-rule_id"><code>rule_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Convert an existing rule from JSON to Terraform for datadog provider<br />resource datadog_security_monitoring_rule.</td>
</tr>
<tr>
    <td><a href="#test_existing_security_monitoring_rule"><CopyableCode code="test_existing_security_monitoring_rule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-rule_id"><code>rule_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Test an existing rule.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_security_monitoring_rule"
    values={[
        { label: 'get_security_monitoring_rule', value: 'get_security_monitoring_rule' },
        { label: 'list_security_monitoring_rules', value: 'list_security_monitoring_rules' }
    ]}
>
<TabItem value="get_security_monitoring_rule">

Get a rule's details.

```sql
SELECT
*
FROM datadog.security.monitoring_rules
WHERE rule_id = '{{ rule_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_security_monitoring_rules">

List rules.

```sql
SELECT
*
FROM datadog.security.monitoring_rules
WHERE region = '{{ region }}' -- required
AND page[size] = '{{ page[size] }}'
AND page[number] = '{{ page[number] }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_security_monitoring_rule"
    values={[
        { label: 'create_security_monitoring_rule', value: 'create_security_monitoring_rule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_security_monitoring_rule">

Create a detection rule.

```sql
INSERT INTO datadog.security.monitoring_rules (
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
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: monitoring_rules
  props:
    - name: region
      value: string
      description: Required parameter for the monitoring_rules resource.
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


## `REPLACE` examples

<Tabs
    defaultValue="update_security_monitoring_rule"
    values={[
        { label: 'update_security_monitoring_rule', value: 'update_security_monitoring_rule' }
    ]}
>
<TabItem value="update_security_monitoring_rule">

Update an existing rule. When updating `cases`, `queries` or `options`, the whole field<br />must be included. For example, when modifying a query all queries must be included.<br />Default rules can only be updated to be enabled, to change notifications, or to update<br />the tags (default tags cannot be removed).

```sql
REPLACE datadog.security.monitoring_rules
SET 
data__calculatedFields = '{{ calculatedFields }}',
data__cases = '{{ cases }}',
data__complianceSignalOptions = '{{ complianceSignalOptions }}',
data__customMessage = '{{ customMessage }}',
data__customName = '{{ customName }}',
data__filters = '{{ filters }}',
data__groupSignalsBy = '{{ groupSignalsBy }}',
data__hasExtendedTitle = {{ hasExtendedTitle }},
data__isEnabled = {{ isEnabled }},
data__message = '{{ message }}',
data__name = '{{ name }}',
data__options = '{{ options }}',
data__queries = '{{ queries }}',
data__referenceTables = '{{ referenceTables }}',
data__schedulingOptions = '{{ schedulingOptions }}',
data__tags = '{{ tags }}',
data__thirdPartyCases = '{{ thirdPartyCases }}',
data__version = {{ version }}
WHERE 
rule_id = '{{ rule_id }}' --required
AND region = '{{ region }}' --required;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_security_monitoring_rule"
    values={[
        { label: 'delete_security_monitoring_rule', value: 'delete_security_monitoring_rule' }
    ]}
>
<TabItem value="delete_security_monitoring_rule">

Delete an existing rule. Default rules cannot be deleted.

```sql
DELETE FROM datadog.security.monitoring_rules
WHERE rule_id = '{{ rule_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="convert_security_monitoring_rule_from_jsonto_terraform"
    values={[
        { label: 'convert_security_monitoring_rule_from_jsonto_terraform', value: 'convert_security_monitoring_rule_from_jsonto_terraform' },
        { label: 'test_security_monitoring_rule', value: 'test_security_monitoring_rule' },
        { label: 'validate_security_monitoring_rule', value: 'validate_security_monitoring_rule' },
        { label: 'convert_existing_security_monitoring_rule', value: 'convert_existing_security_monitoring_rule' },
        { label: 'test_existing_security_monitoring_rule', value: 'test_existing_security_monitoring_rule' }
    ]}
>
<TabItem value="convert_security_monitoring_rule_from_jsonto_terraform">

Convert a rule that doesn't (yet) exist from JSON to Terraform for datadog provider<br />resource datadog_security_monitoring_rule.

```sql
EXEC datadog.security.monitoring_rules.convert_security_monitoring_rule_from_jsonto_terraform 
@region='{{ region }}' --required 
@@json=
'{
"calculatedFields": "{{ calculatedFields }}", 
"cases": "{{ cases }}", 
"customMessage": "{{ customMessage }}", 
"customName": "{{ customName }}", 
"filters": "{{ filters }}", 
"groupSignalsBy": "{{ groupSignalsBy }}", 
"hasExtendedTitle": {{ hasExtendedTitle }}, 
"isEnabled": {{ isEnabled }}, 
"message": "{{ message }}", 
"name": "{{ name }}", 
"options": "{{ options }}", 
"queries": "{{ queries }}", 
"referenceTables": "{{ referenceTables }}", 
"schedulingOptions": "{{ schedulingOptions }}", 
"tags": "{{ tags }}", 
"thirdPartyCases": "{{ thirdPartyCases }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="test_security_monitoring_rule">

Test a rule.

```sql
EXEC datadog.security.monitoring_rules.test_security_monitoring_rule 
@region='{{ region }}' --required 
@@json=
'{
"rule": "{{ rule }}", 
"ruleQueryPayloads": "{{ ruleQueryPayloads }}"
}'
;
```
</TabItem>
<TabItem value="validate_security_monitoring_rule">

Validate a detection rule.

```sql
EXEC datadog.security.monitoring_rules.validate_security_monitoring_rule 
@region='{{ region }}' --required 
@@json=
'{
"calculatedFields": "{{ calculatedFields }}", 
"cases": "{{ cases }}", 
"customMessage": "{{ customMessage }}", 
"customName": "{{ customName }}", 
"filters": "{{ filters }}", 
"groupSignalsBy": "{{ groupSignalsBy }}", 
"hasExtendedTitle": {{ hasExtendedTitle }}, 
"isEnabled": {{ isEnabled }}, 
"message": "{{ message }}", 
"name": "{{ name }}", 
"options": "{{ options }}", 
"queries": "{{ queries }}", 
"referenceTables": "{{ referenceTables }}", 
"schedulingOptions": "{{ schedulingOptions }}", 
"tags": "{{ tags }}", 
"thirdPartyCases": "{{ thirdPartyCases }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="convert_existing_security_monitoring_rule">

Convert an existing rule from JSON to Terraform for datadog provider<br />resource datadog_security_monitoring_rule.

```sql
EXEC datadog.security.monitoring_rules.convert_existing_security_monitoring_rule 
@rule_id='{{ rule_id }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
<TabItem value="test_existing_security_monitoring_rule">

Test an existing rule.

```sql
EXEC datadog.security.monitoring_rules.test_existing_security_monitoring_rule 
@rule_id='{{ rule_id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"rule": "{{ rule }}", 
"ruleQueryPayloads": "{{ ruleQueryPayloads }}"
}'
;
```
</TabItem>
</Tabs>
