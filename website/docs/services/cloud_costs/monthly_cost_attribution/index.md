--- 
title: monthly_cost_attribution
hide_title: false
hide_table_of_contents: false
keywords:
  - monthly_cost_attribution
  - cloud_costs
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

Creates, updates, deletes, gets or lists a <code>monthly_cost_attribution</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>monthly_cost_attribution</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.cloud_costs.monthly_cost_attribution" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_monthly_cost_attribution"
    values={[
        { label: 'get_monthly_cost_attribution', value: 'get_monthly_cost_attribution' }
    ]}
>
<TabItem value="get_monthly_cost_attribution">

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
    <td>Unique ID of the response.</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>Cost Attribution by Tag for a given organization.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of cost attribution data. (default: cost_by_tag, example: cost_by_tag)</td>
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
    <td><a href="#get_monthly_cost_attribution"><CopyableCode code="get_monthly_cost_attribution" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-start_month"><code>start_month</code></a>, <a href="#parameter-fields"><code>fields</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-end_month"><code>end_month</code></a>, <a href="#parameter-sort_direction"><code>sort_direction</code></a>, <a href="#parameter-sort_name"><code>sort_name</code></a>, <a href="#parameter-tag_breakdown_keys"><code>tag_breakdown_keys</code></a>, <a href="#parameter-next_record_id"><code>next_record_id</code></a>, <a href="#parameter-include_descendants"><code>include_descendants</code></a></td>
    <td>Get monthly cost attribution by tag across multi-org and single root-org accounts.<br />Cost Attribution data for a given month becomes available no later than the 19th of the following month.<br />This API endpoint is paginated. To make sure you receive all records, check if the value of `next_record_id` is<br />set in the response. If it is, make another request and pass `next_record_id` as a parameter.<br />Pseudo code example:<br />```<br />response := GetMonthlyCostAttribution(start_month, end_month)<br />cursor := response.metadata.pagination.next_record_id<br />WHILE cursor != null BEGIN<br />  sleep(5 seconds)  # Avoid running into rate limit<br />  response := GetMonthlyCostAttribution(start_month, end_month, next_record_id=cursor)<br />  cursor := response.metadata.pagination.next_record_id<br />END<br />```<br /><br />This endpoint is only accessible for [parent-level organizations](https://docs.datadoghq.com/account_management/multi_organization/). This endpoint is not available in the Government (US1-FED) site.</td>
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
<tr id="parameter-fields">
    <td><CopyableCode code="fields" /></td>
    <td><code>string</code></td>
    <td>Comma-separated list specifying cost types (e.g., `<billing_dimension>_on_demand_cost`, `<billing_dimension>_committed_cost`, `<billing_dimension>_total_cost`) and the proportions (`<billing_dimension>_percentage_in_org`, `<billing_dimension>_percentage_in_account`). Use `*` to retrieve all fields. Example: `infra_host_on_demand_cost,infra_host_percentage_in_account` To obtain the complete list of active billing dimensions that can be used to replace `<billing_dimension>` in the field names, make a request to the [Get active billing dimensions API](https://docs.datadoghq.com/api/latest/usage-metering/#get-active-billing-dimensions-for-cost-attribution).</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-start_month">
    <td><CopyableCode code="start_month" /></td>
    <td><code>string (date-time)</code></td>
    <td>Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for cost beginning in this month.</td>
</tr>
<tr id="parameter-end_month">
    <td><CopyableCode code="end_month" /></td>
    <td><code>string (date-time)</code></td>
    <td>Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for cost ending this month.</td>
</tr>
<tr id="parameter-include_descendants">
    <td><CopyableCode code="include_descendants" /></td>
    <td><code>boolean</code></td>
    <td>Include child org cost in the response. Defaults to `true`.</td>
</tr>
<tr id="parameter-next_record_id">
    <td><CopyableCode code="next_record_id" /></td>
    <td><code>string</code></td>
    <td>List following results with a next_record_id provided in the previous query.</td>
</tr>
<tr id="parameter-sort_direction">
    <td><CopyableCode code="sort_direction" /></td>
    <td><code>string</code></td>
    <td>The direction to sort by: `[desc, asc]`.</td>
</tr>
<tr id="parameter-sort_name">
    <td><CopyableCode code="sort_name" /></td>
    <td><code>string</code></td>
    <td>The billing dimension to sort by. Always sorted by total cost. Example: `infra_host`.</td>
</tr>
<tr id="parameter-tag_breakdown_keys">
    <td><CopyableCode code="tag_breakdown_keys" /></td>
    <td><code>string</code></td>
    <td>Comma separated list of tag keys used to group cost. If no value is provided the cost will not be broken down by tags. To see which tags are available, look for the value of `tag_config_source` in the API response.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_monthly_cost_attribution"
    values={[
        { label: 'get_monthly_cost_attribution', value: 'get_monthly_cost_attribution' }
    ]}
>
<TabItem value="get_monthly_cost_attribution">

Get monthly cost attribution by tag across multi-org and single root-org accounts.<br />Cost Attribution data for a given month becomes available no later than the 19th of the following month.<br />This API endpoint is paginated. To make sure you receive all records, check if the value of `next_record_id` is<br />set in the response. If it is, make another request and pass `next_record_id` as a parameter.<br />Pseudo code example:<br />```<br />response := GetMonthlyCostAttribution(start_month, end_month)<br />cursor := response.metadata.pagination.next_record_id<br />WHILE cursor != null BEGIN<br />  sleep(5 seconds)  # Avoid running into rate limit<br />  response := GetMonthlyCostAttribution(start_month, end_month, next_record_id=cursor)<br />  cursor := response.metadata.pagination.next_record_id<br />END<br />```<br /><br />This endpoint is only accessible for [parent-level organizations](https://docs.datadoghq.com/account_management/multi_organization/). This endpoint is not available in the Government (US1-FED) site.

```sql
SELECT
id,
attributes,
type
FROM datadog.cloud_costs.monthly_cost_attribution
WHERE start_month = '{{ start_month }}' -- required
AND fields = '{{ fields }}' -- required
AND region = '{{ region }}' -- required
AND end_month = '{{ end_month }}'
AND sort_direction = '{{ sort_direction }}'
AND sort_name = '{{ sort_name }}'
AND tag_breakdown_keys = '{{ tag_breakdown_keys }}'
AND next_record_id = '{{ next_record_id }}'
AND include_descendants = '{{ include_descendants }}'
;
```
</TabItem>
</Tabs>
