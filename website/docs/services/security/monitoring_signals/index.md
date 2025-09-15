--- 
title: monitoring_signals
hide_title: false
hide_table_of_contents: false
keywords:
  - monitoring_signals
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

Creates, updates, deletes, gets or lists a <code>monitoring_signals</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>monitoring_signals</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.monitoring_signals" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_security_monitoring_signal"
    values={[
        { label: 'get_security_monitoring_signal', value: 'get_security_monitoring_signal' },
        { label: 'list_security_monitoring_signals', value: 'list_security_monitoring_signals' }
    ]}
>
<TabItem value="get_security_monitoring_signal">

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
    <td>The unique ID of the security signal. (example: AAAAAWgN8Xwgr1vKDQAAAABBV2dOOFh3ZzZobm1mWXJFYTR0OA)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The object containing all signal attributes and their associated values.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of event. (default: signal, example: signal)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_security_monitoring_signals">

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
    <td>The unique ID of the security signal. (example: AAAAAWgN8Xwgr1vKDQAAAABBV2dOOFh3ZzZobm1mWXJFYTR0OA)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The object containing all signal attributes and their associated values.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of event. (default: signal, example: signal)</td>
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
    <td><a href="#get_security_monitoring_signal"><CopyableCode code="get_security_monitoring_signal" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-signal_id"><code>signal_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a signal's details.</td>
</tr>
<tr>
    <td><a href="#list_security_monitoring_signals"><CopyableCode code="list_security_monitoring_signals" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-filter[query]"><code>filter[query]</code></a>, <a href="#parameter-filter[from]"><code>filter[from]</code></a>, <a href="#parameter-filter[to]"><code>filter[to]</code></a>, <a href="#parameter-sort"><code>sort</code></a>, <a href="#parameter-page[cursor]"><code>page[cursor]</code></a>, <a href="#parameter-page[limit]"><code>page[limit]</code></a></td>
    <td>The list endpoint returns security signals that match a search query.<br />Both this endpoint and the POST endpoint can be used interchangeably when listing<br />security signals.</td>
</tr>
<tr>
    <td><a href="#search_security_monitoring_signals"><CopyableCode code="search_security_monitoring_signals" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Returns security signals that match a search query.<br />Both this endpoint and the GET endpoint can be used interchangeably for listing<br />security signals.</td>
</tr>
<tr>
    <td><a href="#edit_security_monitoring_signal_assignee"><CopyableCode code="edit_security_monitoring_signal_assignee" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-signal_id"><code>signal_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Modify the triage assignee of a security signal.</td>
</tr>
<tr>
    <td><a href="#edit_security_monitoring_signal_incidents"><CopyableCode code="edit_security_monitoring_signal_incidents" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-signal_id"><code>signal_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Change the related incidents for a security signal.</td>
</tr>
<tr>
    <td><a href="#edit_security_monitoring_signal_state"><CopyableCode code="edit_security_monitoring_signal_state" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-signal_id"><code>signal_id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data"><code>data</code></a></td>
    <td></td>
    <td>Change the triage state of a security signal.</td>
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
<tr id="parameter-signal_id">
    <td><CopyableCode code="signal_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the signal.</td>
</tr>
<tr id="parameter-filter[from]">
    <td><CopyableCode code="filter[from]" /></td>
    <td><code>string (date-time)</code></td>
    <td>The minimum timestamp for requested security signals. (example: 2019-01-02T09:42:36.320Z)</td>
</tr>
<tr id="parameter-filter[query]">
    <td><CopyableCode code="filter[query]" /></td>
    <td><code>string</code></td>
    <td>The search query for security signals. (example: security:attack status:high)</td>
</tr>
<tr id="parameter-filter[to]">
    <td><CopyableCode code="filter[to]" /></td>
    <td><code>string (date-time)</code></td>
    <td>The maximum timestamp for requested security signals. (example: 2019-01-03T09:42:36.320Z)</td>
</tr>
<tr id="parameter-page[cursor]">
    <td><CopyableCode code="page[cursor]" /></td>
    <td><code>string</code></td>
    <td>A list of results using the cursor provided in the previous query. (example: eyJzdGFydEF0IjoiQVFBQUFYS2tMS3pPbm40NGV3QUFBQUJCV0V0clRFdDZVbG8zY3pCRmNsbHJiVmxDWlEifQ==)</td>
</tr>
<tr id="parameter-page[limit]">
    <td><CopyableCode code="page[limit]" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of security signals in the response. (example: 25)</td>
</tr>
<tr id="parameter-sort">
    <td><CopyableCode code="sort" /></td>
    <td><code>string</code></td>
    <td>The order of the security signals in results.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_security_monitoring_signal"
    values={[
        { label: 'get_security_monitoring_signal', value: 'get_security_monitoring_signal' },
        { label: 'list_security_monitoring_signals', value: 'list_security_monitoring_signals' }
    ]}
>
<TabItem value="get_security_monitoring_signal">

Get a signal's details.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.monitoring_signals
WHERE signal_id = '{{ signal_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_security_monitoring_signals">

The list endpoint returns security signals that match a search query.<br />Both this endpoint and the POST endpoint can be used interchangeably when listing<br />security signals.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.monitoring_signals
WHERE region = '{{ region }}' -- required
AND filter[query] = '{{ filter[query] }}'
AND filter[from] = '{{ filter[from] }}'
AND filter[to] = '{{ filter[to] }}'
AND sort = '{{ sort }}'
AND page[cursor] = '{{ page[cursor] }}'
AND page[limit] = '{{ page[limit] }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="search_security_monitoring_signals"
    values={[
        { label: 'search_security_monitoring_signals', value: 'search_security_monitoring_signals' },
        { label: 'edit_security_monitoring_signal_assignee', value: 'edit_security_monitoring_signal_assignee' },
        { label: 'edit_security_monitoring_signal_incidents', value: 'edit_security_monitoring_signal_incidents' },
        { label: 'edit_security_monitoring_signal_state', value: 'edit_security_monitoring_signal_state' }
    ]}
>
<TabItem value="search_security_monitoring_signals">

Returns security signals that match a search query.<br />Both this endpoint and the GET endpoint can be used interchangeably for listing<br />security signals.

```sql
EXEC datadog.security.monitoring_signals.search_security_monitoring_signals 
@region='{{ region }}' --required 
@@json=
'{
"filter": "{{ filter }}", 
"page": "{{ page }}", 
"sort": "{{ sort }}"
}'
;
```
</TabItem>
<TabItem value="edit_security_monitoring_signal_assignee">

Modify the triage assignee of a security signal.

```sql
EXEC datadog.security.monitoring_signals.edit_security_monitoring_signal_assignee 
@signal_id='{{ signal_id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
<TabItem value="edit_security_monitoring_signal_incidents">

Change the related incidents for a security signal.

```sql
EXEC datadog.security.monitoring_signals.edit_security_monitoring_signal_incidents 
@signal_id='{{ signal_id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
<TabItem value="edit_security_monitoring_signal_state">

Change the triage state of a security signal.

```sql
EXEC datadog.security.monitoring_signals.edit_security_monitoring_signal_state 
@signal_id='{{ signal_id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"data": "{{ data }}"
}'
;
```
</TabItem>
</Tabs>
