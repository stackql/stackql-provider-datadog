--- 
title: waf_custom_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - waf_custom_rules
  - remote_config
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

Creates, updates, deletes, gets or lists a <code>waf_custom_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>waf_custom_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.remote_config.waf_custom_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_application_security_waf_custom_rule"
    values={[
        { label: 'get_application_security_waf_custom_rule', value: 'get_application_security_waf_custom_rule' },
        { label: 'list_application_security_wafcustom_rules', value: 'list_application_security_wafcustom_rules' }
    ]}
>
<TabItem value="get_application_security_waf_custom_rule">

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
    <td>The ID of the custom rule. (example: 2857c47d-1e3a-4300-8b2f-dc24089c084b)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>A WAF custom rule.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value should always be `custom_rule`. (default: custom_rule, example: custom_rule)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_application_security_wafcustom_rules">

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
    <td>The ID of the custom rule. (example: 2857c47d-1e3a-4300-8b2f-dc24089c084b)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>A WAF custom rule.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value should always be `custom_rule`. (default: custom_rule, example: custom_rule)</td>
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
    <td><a href="#get_application_security_waf_custom_rule"><CopyableCode code="get_application_security_waf_custom_rule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-custom_rule_id"><code>custom_rule_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Retrieve a WAF custom rule by ID.</td>
</tr>
<tr>
    <td><a href="#list_application_security_wafcustom_rules"><CopyableCode code="list_application_security_wafcustom_rules" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Retrieve a list of WAF custom rule.</td>
</tr>
<tr>
    <td><a href="#create_application_security_waf_custom_rule"><CopyableCode code="create_application_security_waf_custom_rule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a new WAF custom rule with the given parameters.</td>
</tr>
<tr>
    <td><a href="#update_application_security_waf_custom_rule"><CopyableCode code="update_application_security_waf_custom_rule" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-custom_rule_id"><code>custom_rule_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Update a specific WAF custom Rule.<br />Returns the Custom Rule object when the request is successful.</td>
</tr>
<tr>
    <td><a href="#delete_application_security_waf_custom_rule"><CopyableCode code="delete_application_security_waf_custom_rule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-custom_rule_id"><code>custom_rule_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a specific WAF custom rule.</td>
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
<tr id="parameter-custom_rule_id">
    <td><CopyableCode code="custom_rule_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the custom rule. (example: 3b5-v82-ns6)</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_application_security_waf_custom_rule"
    values={[
        { label: 'get_application_security_waf_custom_rule', value: 'get_application_security_waf_custom_rule' },
        { label: 'list_application_security_wafcustom_rules', value: 'list_application_security_wafcustom_rules' }
    ]}
>
<TabItem value="get_application_security_waf_custom_rule">

Retrieve a WAF custom rule by ID.

```sql
SELECT
id,
attributes,
type
FROM datadog.remote_config.waf_custom_rules
WHERE custom_rule_id = '{{ custom_rule_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_application_security_wafcustom_rules">

Retrieve a list of WAF custom rule.

```sql
SELECT
id,
attributes,
type
FROM datadog.remote_config.waf_custom_rules
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_application_security_waf_custom_rule"
    values={[
        { label: 'create_application_security_waf_custom_rule', value: 'create_application_security_waf_custom_rule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_application_security_waf_custom_rule">

Create a new WAF custom rule with the given parameters.

```sql
INSERT INTO datadog.remote_config.waf_custom_rules (
data__data,
region
)
SELECT 
'{{ data }}' /* required */,
'{{ region }}'
RETURNING
data
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: waf_custom_rules
  props:
    - name: region
      value: string
      description: Required parameter for the waf_custom_rules resource.
    - name: data
      value: object
      description: |
        Object for a single WAF custom rule.
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update_application_security_waf_custom_rule"
    values={[
        { label: 'update_application_security_waf_custom_rule', value: 'update_application_security_waf_custom_rule' }
    ]}
>
<TabItem value="update_application_security_waf_custom_rule">

Update a specific WAF custom Rule.<br />Returns the Custom Rule object when the request is successful.

```sql
REPLACE datadog.remote_config.waf_custom_rules
SET 
data__data = '{{ data }}'
WHERE 
custom_rule_id = '{{ custom_rule_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_application_security_waf_custom_rule"
    values={[
        { label: 'delete_application_security_waf_custom_rule', value: 'delete_application_security_waf_custom_rule' }
    ]}
>
<TabItem value="delete_application_security_waf_custom_rule">

Delete a specific WAF custom rule.

```sql
DELETE FROM datadog.remote_config.waf_custom_rules
WHERE custom_rule_id = '{{ custom_rule_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
