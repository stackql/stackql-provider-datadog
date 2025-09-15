--- 
title: scanning_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - scanning_rules
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

Creates, updates, deletes, gets or lists a <code>scanning_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scanning_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.scanning_rules" /></td></tr>
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
    <td><a href="#create_scanning_rule"><CopyableCode code="create_scanning_rule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a>, <a href="#parameter-data__meta"><code>data__meta</code></a></td>
    <td></td>
    <td>Create a scanning rule in a sensitive data scanner group, ordered last.<br />The posted rule MUST include a group relationship.<br />It MUST include either a standard_pattern relationship or a regex attribute, but not both.<br />If included_attributes is empty or missing, we will scan all attributes except<br />excluded_attributes. If both are missing, we will scan the whole event.</td>
</tr>
<tr>
    <td><a href="#update_scanning_rule"><CopyableCode code="update_scanning_rule" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-rule_id"><code>rule_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a>, <a href="#parameter-data__meta"><code>data__meta</code></a></td>
    <td></td>
    <td>Update a scanning rule.<br />The request body MUST NOT include a standard_pattern relationship, as that relationship<br />is non-editable. Trying to edit the regex attribute of a rule with a standard_pattern<br />relationship will also result in an error.</td>
</tr>
<tr>
    <td><a href="#delete_scanning_rule"><CopyableCode code="delete_scanning_rule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-rule_id"><code>rule_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a given rule.</td>
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

## `INSERT` examples

<Tabs
    defaultValue="create_scanning_rule"
    values={[
        { label: 'create_scanning_rule', value: 'create_scanning_rule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_scanning_rule">

Create a scanning rule in a sensitive data scanner group, ordered last.<br />The posted rule MUST include a group relationship.<br />It MUST include either a standard_pattern relationship or a regex attribute, but not both.<br />If included_attributes is empty or missing, we will scan all attributes except<br />excluded_attributes. If both are missing, we will scan the whole event.

```sql
INSERT INTO datadog.security.scanning_rules (
data__data,
data__meta,
region
)
SELECT 
'{{ data }}' /* required */,
'{{ meta }}' /* required */,
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
- name: scanning_rules
  props:
    - name: region
      value: string
      description: Required parameter for the scanning_rules resource.
    - name: data
      value: object
      description: |
        Data related to the creation of a rule.
    - name: meta
      value: object
      description: |
        Meta payload containing information about the API.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_scanning_rule"
    values={[
        { label: 'update_scanning_rule', value: 'update_scanning_rule' }
    ]}
>
<TabItem value="update_scanning_rule">

Update a scanning rule.<br />The request body MUST NOT include a standard_pattern relationship, as that relationship<br />is non-editable. Trying to edit the regex attribute of a rule with a standard_pattern<br />relationship will also result in an error.

```sql
UPDATE datadog.security.scanning_rules
SET 
data__data = '{{ data }}',
data__meta = '{{ meta }}'
WHERE 
rule_id = '{{ rule_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
AND data__meta = '{{ meta }}' --required
RETURNING
meta;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_scanning_rule"
    values={[
        { label: 'delete_scanning_rule', value: 'delete_scanning_rule' }
    ]}
>
<TabItem value="delete_scanning_rule">

Delete a given rule.

```sql
DELETE FROM datadog.security.scanning_rules
WHERE rule_id = '{{ rule_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
