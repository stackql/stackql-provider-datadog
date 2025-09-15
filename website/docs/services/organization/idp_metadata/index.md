--- 
title: idp_metadata
hide_title: false
hide_table_of_contents: false
keywords:
  - idp_metadata
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

Creates, updates, deletes, gets or lists an <code>idp_metadata</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>idp_metadata</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.organization.idp_metadata" /></td></tr>
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
    <td><a href="#upload_id_pmetadata"><CopyableCode code="upload_id_pmetadata" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Endpoint for uploading IdP metadata for SAML setup.<br /><br />Use this endpoint to upload or replace IdP metadata for SAML login configuration.</td>
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

## Lifecycle Methods

<Tabs
    defaultValue="upload_id_pmetadata"
    values={[
        { label: 'upload_id_pmetadata', value: 'upload_id_pmetadata' }
    ]}
>
<TabItem value="upload_id_pmetadata">

Endpoint for uploading IdP metadata for SAML setup.<br /><br />Use this endpoint to upload or replace IdP metadata for SAML login configuration.

```sql
EXEC datadog.organization.idp_metadata.upload_id_pmetadata 
@region='{{ region }}' --required 
@@json=
'{
"idp_file": "{{ idp_file }}"
}'
;
```
</TabItem>
</Tabs>
