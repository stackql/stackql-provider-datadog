--- 
title: restriction_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - restriction_policies
  - organization
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

Creates, updates, deletes, gets or lists a <code>restriction_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>restriction_policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.restriction_policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_restriction_policy"
    values={[
        { label: 'get_restriction_policy', value: 'get_restriction_policy' }
    ]}
>
<TabItem value="get_restriction_policy">

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
    <td>The identifier, always equivalent to the value specified in the `resource_id` path parameter. (example: dashboard:abc-def-ghi)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Restriction policy attributes.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Restriction policy type. (default: restriction_policy, example: restriction_policy)</td>
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
    <td><a href="#get_restriction_policy"><CopyableCode code="get_restriction_policy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resource_id"><code>resource_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Retrieves the restriction policy associated with a specified resource.</td>
</tr>
<tr>
    <td><a href="#update_restriction_policy"><CopyableCode code="update_restriction_policy" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-resource_id"><code>resource_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td><a href="#parameter-allow_self_lockout"><code>allow_self_lockout</code></a></td>
    <td>Updates the restriction policy associated with a resource.<br /><br />#### Supported resources<br />Restriction policies can be applied to the following resources:<br />- Dashboards: `dashboard`<br />- Integration Services: `integration-service`<br />- Integration Webhooks: `integration-webhook`<br />- Notebooks: `notebook`<br />- Powerpacks: `powerpack`<br />- Reference Tables: `reference-table`<br />- Security Rules: `security-rule`<br />- Service Level Objectives: `slo`<br />- Synthetic Global Variables: `synthetics-global-variable`<br />- Synthetic Tests: `synthetics-test`<br />- Synthetic Private Locations: `synthetics-private-location`<br />- Monitors: `monitor`<br />- Workflows: `workflow`<br />- App Builder Apps: `app-builder-app`<br />- Connections: `connection`<br />- Connection Groups: `connection-group`<br />- RUM Applications: `rum-application`<br />- Cross Org Connections: `cross-org-connection`<br />- Spreadsheets: `spreadsheet`<br />- On-Call Schedules: `on-call-schedule`<br />- On-Call Escalation Policies: `on-call-escalation-policy`<br />- On-Call Team Routing Rules: `on-call-team-routing-rules`<br /><br />#### Supported relations for resources<br />Resource Type               | Supported Relations<br />----------------------------|--------------------------<br />Dashboards                  | `viewer`, `editor`<br />Integration Services        | `viewer`, `editor`<br />Integration Webhooks        | `viewer`, `editor`<br />Notebooks                   | `viewer`, `editor`<br />Powerpacks                  | `viewer`, `editor`<br />Security Rules              | `viewer`, `editor`<br />Service Level Objectives    | `viewer`, `editor`<br />Synthetic Global Variables  | `viewer`, `editor`<br />Synthetic Tests             | `viewer`, `editor`<br />Synthetic Private Locations | `viewer`, `editor`<br />Monitors                    | `viewer`, `editor`<br />Reference Tables            | `viewer`, `editor`<br />Workflows                   | `viewer`, `runner`, `editor`<br />App Builder Apps            | `viewer`, `editor`<br />Connections                 | `viewer`, `resolver`, `editor`<br />Connection Groups           | `viewer`, `editor`<br />RUM Application             | `viewer`, `editor`<br />Cross Org Connections       | `viewer`, `editor`<br />Spreadsheets                | `viewer`, `editor`<br />On-Call Schedules           | `viewer`, `overrider`, `editor`<br />On-Call Escalation Policies | `viewer`, `editor`<br />On-Call Team Routing Rules  | `viewer`, `editor`</td>
</tr>
<tr>
    <td><a href="#delete_restriction_policy"><CopyableCode code="delete_restriction_policy" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resource_id"><code>resource_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Deletes the restriction policy associated with a specified resource.</td>
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
<tr id="parameter-resource_id">
    <td><CopyableCode code="resource_id" /></td>
    <td><code>string</code></td>
    <td>Identifier, formatted as `type:id`. Supported types: `dashboard`, `integration-service`, `integration-webhook`, `notebook`, `reference-table`, `security-rule`, `slo`, `workflow`, `app-builder-app`, `connection`, `connection-group`, `rum-application`, `cross-org-connection`, `spreadsheet`, `on-call-schedule`, `on-call-escalation-policy`, `on-call-team-routing-rules. (example: dashboard:abc-def-ghi)</td>
</tr>
<tr id="parameter-allow_self_lockout">
    <td><CopyableCode code="allow_self_lockout" /></td>
    <td><code>boolean</code></td>
    <td>Allows admins (users with the `user_access_manage` permission) to remove their own access from the resource if set to `true`. By default, this is set to `false`, preventing admins from locking themselves out.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_restriction_policy"
    values={[
        { label: 'get_restriction_policy', value: 'get_restriction_policy' }
    ]}
>
<TabItem value="get_restriction_policy">

Retrieves the restriction policy associated with a specified resource.

```sql
SELECT
id,
attributes,
type
FROM datadog.organization.restriction_policies
WHERE resource_id = '{{ resource_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update_restriction_policy"
    values={[
        { label: 'update_restriction_policy', value: 'update_restriction_policy' }
    ]}
>
<TabItem value="update_restriction_policy">

Updates the restriction policy associated with a resource.<br /><br />#### Supported resources<br />Restriction policies can be applied to the following resources:<br />- Dashboards: `dashboard`<br />- Integration Services: `integration-service`<br />- Integration Webhooks: `integration-webhook`<br />- Notebooks: `notebook`<br />- Powerpacks: `powerpack`<br />- Reference Tables: `reference-table`<br />- Security Rules: `security-rule`<br />- Service Level Objectives: `slo`<br />- Synthetic Global Variables: `synthetics-global-variable`<br />- Synthetic Tests: `synthetics-test`<br />- Synthetic Private Locations: `synthetics-private-location`<br />- Monitors: `monitor`<br />- Workflows: `workflow`<br />- App Builder Apps: `app-builder-app`<br />- Connections: `connection`<br />- Connection Groups: `connection-group`<br />- RUM Applications: `rum-application`<br />- Cross Org Connections: `cross-org-connection`<br />- Spreadsheets: `spreadsheet`<br />- On-Call Schedules: `on-call-schedule`<br />- On-Call Escalation Policies: `on-call-escalation-policy`<br />- On-Call Team Routing Rules: `on-call-team-routing-rules`<br /><br />#### Supported relations for resources<br />Resource Type               | Supported Relations<br />----------------------------|--------------------------<br />Dashboards                  | `viewer`, `editor`<br />Integration Services        | `viewer`, `editor`<br />Integration Webhooks        | `viewer`, `editor`<br />Notebooks                   | `viewer`, `editor`<br />Powerpacks                  | `viewer`, `editor`<br />Security Rules              | `viewer`, `editor`<br />Service Level Objectives    | `viewer`, `editor`<br />Synthetic Global Variables  | `viewer`, `editor`<br />Synthetic Tests             | `viewer`, `editor`<br />Synthetic Private Locations | `viewer`, `editor`<br />Monitors                    | `viewer`, `editor`<br />Reference Tables            | `viewer`, `editor`<br />Workflows                   | `viewer`, `runner`, `editor`<br />App Builder Apps            | `viewer`, `editor`<br />Connections                 | `viewer`, `resolver`, `editor`<br />Connection Groups           | `viewer`, `editor`<br />RUM Application             | `viewer`, `editor`<br />Cross Org Connections       | `viewer`, `editor`<br />Spreadsheets                | `viewer`, `editor`<br />On-Call Schedules           | `viewer`, `overrider`, `editor`<br />On-Call Escalation Policies | `viewer`, `editor`<br />On-Call Team Routing Rules  | `viewer`, `editor`

```sql
REPLACE datadog.organization.restriction_policies
SET 
data__data = '{{ data }}'
WHERE 
resource_id = '{{ resource_id }}' --required
AND region = '{{ region }}' --required
AND data__data = '{{ data }}' --required
AND allow_self_lockout = {{ allow_self_lockout}}
RETURNING
data;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_restriction_policy"
    values={[
        { label: 'delete_restriction_policy', value: 'delete_restriction_policy' }
    ]}
>
<TabItem value="delete_restriction_policy">

Deletes the restriction policy associated with a specified resource.

```sql
DELETE FROM datadog.organization.restriction_policies
WHERE resource_id = '{{ resource_id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
