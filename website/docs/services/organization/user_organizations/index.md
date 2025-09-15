--- 
title: user_organizations
hide_title: false
hide_table_of_contents: false
keywords:
  - user_organizations
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

Creates, updates, deletes, gets or lists a <code>user_organizations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>user_organizations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.user_organizations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_user_organizations"
    values={[
        { label: 'list_user_organizations', value: 'list_user_organizations' }
    ]}
>
<TabItem value="list_user_organizations">

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
    <td>ID of the user.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Attributes of user object returned by the API.</td>
</tr>
<tr>
    <td><CopyableCode code="relationships" /></td>
    <td><code>object</code></td>
    <td>Relationships of the user object returned by the API.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Users resource type. (default: users, example: users)</td>
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
    <td><a href="#list_user_organizations"><CopyableCode code="list_user_organizations" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-user_id"><code>user_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a user organization. Returns the user information and all organizations<br />joined by this user.</td>
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
<tr id="parameter-user_id">
    <td><CopyableCode code="user_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the user.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_user_organizations"
    values={[
        { label: 'list_user_organizations', value: 'list_user_organizations' }
    ]}
>
<TabItem value="list_user_organizations">

Get a user organization. Returns the user information and all organizations<br />joined by this user.

```sql
SELECT
id,
attributes,
relationships,
type
FROM datadog.organization.user_organizations
WHERE user_id = '{{ user_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
