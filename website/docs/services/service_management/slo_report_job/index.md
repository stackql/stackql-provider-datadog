--- 
title: slo_report_job
hide_title: false
hide_table_of_contents: false
keywords:
  - slo_report_job
  - service_management
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

Creates, updates, deletes, gets or lists a <code>slo_report_job</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>slo_report_job</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.service_management.slo_report_job" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_sloreport_job_status"
    values={[
        { label: 'get_sloreport_job_status', value: 'get_sloreport_job_status' }
    ]}
>
<TabItem value="get_sloreport_job_status">

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
    <td>The ID of the report job. (example: dc8d92aa-e0af-11ee-af21-1feeaccaa3a3)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The attributes portion of the SLO report status response.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of ID. (example: report_id)</td>
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
    <td><a href="#get_sloreport_job_status"><CopyableCode code="get_sloreport_job_status" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-report_id"><code>report_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the status of the SLO report job.</td>
</tr>
<tr>
    <td><a href="#create_sloreport_job"><CopyableCode code="create_sloreport_job" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__data"><code>data__data</code></a></td>
    <td></td>
    <td>Create a job to generate an SLO report. The report job is processed asynchronously and eventually results in a CSV report being available for download.<br /><br />Check the status of the job and download the CSV report using the returned `report_id`.</td>
</tr>
<tr>
    <td><a href="#get_sloreport"><CopyableCode code="get_sloreport" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-report_id"><code>report_id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Download an SLO report. This can only be performed after the report job has completed.<br /><br />Reports are not guaranteed to exist indefinitely. Datadog recommends that you download the report as soon as it is available.</td>
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
<tr id="parameter-report_id">
    <td><CopyableCode code="report_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the report job.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_sloreport_job_status"
    values={[
        { label: 'get_sloreport_job_status', value: 'get_sloreport_job_status' }
    ]}
>
<TabItem value="get_sloreport_job_status">

Get the status of the SLO report job.

```sql
SELECT
id,
attributes,
type
FROM datadog.service_management.slo_report_job
WHERE report_id = '{{ report_id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_sloreport_job"
    values={[
        { label: 'create_sloreport_job', value: 'create_sloreport_job' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_sloreport_job">

Create a job to generate an SLO report. The report job is processed asynchronously and eventually results in a CSV report being available for download.<br /><br />Check the status of the job and download the CSV report using the returned `report_id`.

```sql
INSERT INTO datadog.service_management.slo_report_job (
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
- name: slo_report_job
  props:
    - name: region
      value: string
      description: Required parameter for the slo_report_job resource.
    - name: data
      value: object
      description: |
        The data portion of the SLO report request.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="get_sloreport"
    values={[
        { label: 'get_sloreport', value: 'get_sloreport' }
    ]}
>
<TabItem value="get_sloreport">

Download an SLO report. This can only be performed after the report job has completed.<br /><br />Reports are not guaranteed to exist indefinitely. Datadog recommends that you download the report as soon as it is available.

```sql
EXEC datadog.service_management.slo_report_job.get_sloreport 
@report_id='{{ report_id }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
</Tabs>
