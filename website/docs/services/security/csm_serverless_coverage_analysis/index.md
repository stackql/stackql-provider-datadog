--- 
title: csm_serverless_coverage_analysis
hide_title: false
hide_table_of_contents: false
keywords:
  - csm_serverless_coverage_analysis
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

Creates, updates, deletes, gets or lists a <code>csm_serverless_coverage_analysis</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>csm_serverless_coverage_analysis</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.csm_serverless_coverage_analysis" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_csmserverless_coverage_analysis"
    values={[
        { label: 'get_csmserverless_coverage_analysis', value: 'get_csmserverless_coverage_analysis' }
    ]}
>
<TabItem value="get_csmserverless_coverage_analysis">

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
    <td>The ID of your organization. (example: 66b3c6b5-5c9a-457e-b1c3-f247ca23afa3)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>CSM Serverless Resources Coverage Analysis attributes.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. The value should always be `get_serverless_coverage_analysis_response_public_v0`. (default: get_serverless_coverage_analysis_response_public_v0, example: get_serverless_coverage_analysis_response_public_v0)</td>
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
    <td><a href="#get_csmserverless_coverage_analysis"><CopyableCode code="get_csmserverless_coverage_analysis" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the CSM Coverage Analysis of your Serverless Resources.<br />This is calculated based on the number of agents running on your Serverless<br />Resources with CSM feature(s) enabled.</td>
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
    defaultValue="get_csmserverless_coverage_analysis"
    values={[
        { label: 'get_csmserverless_coverage_analysis', value: 'get_csmserverless_coverage_analysis' }
    ]}
>
<TabItem value="get_csmserverless_coverage_analysis">

Get the CSM Coverage Analysis of your Serverless Resources.<br />This is calculated based on the number of agents running on your Serverless<br />Resources with CSM feature(s) enabled.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.csm_serverless_coverage_analysis
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
