--- 
title: sboms
hide_title: false
hide_table_of_contents: false
keywords:
  - sboms
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

Creates, updates, deletes, gets or lists a <code>sboms</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sboms</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="datadog.security.sboms" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_sbom"
    values={[
        { label: 'get_sbom', value: 'get_sbom' },
        { label: 'list_assets_sboms', value: 'list_assets_sboms' }
    ]}
>
<TabItem value="get_sbom">

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
    <td>The unique ID for this SBOM (it is equivalent to the `asset_name` or `asset_name@repo_digest` (Image) (example: github.com/datadog/datadog-agent)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The JSON:API attributes of the SBOM.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The JSON:API type. (example: sboms)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_assets_sboms">

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
    <td>The unique ID for this SBOM (it is equivalent to the `asset_name` or `asset_name@repo_digest` (Image) (example: github.com/datadog/datadog-agent)</td>
</tr>
<tr>
    <td><CopyableCode code="attributes" /></td>
    <td><code>object</code></td>
    <td>The JSON:API attributes of the SBOM.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The JSON:API type. (example: sboms)</td>
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
    <td><a href="#get_sbom"><CopyableCode code="get_sbom" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-asset_type"><code>asset_type</code></a>, <a href="#parameter-filter[asset_name]"><code>filter[asset_name]</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-filter[repo_digest]"><code>filter[repo_digest]</code></a></td>
    <td>Get a single SBOM related to an asset by its type and name.<br /></td>
</tr>
<tr>
    <td><a href="#list_assets_sboms"><CopyableCode code="list_assets_sboms" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-page[token]"><code>page[token]</code></a>, <a href="#parameter-page[number]"><code>page[number]</code></a>, <a href="#parameter-filter[asset_type]"><code>filter[asset_type]</code></a>, <a href="#parameter-filter[asset_name]"><code>filter[asset_name]</code></a>, <a href="#parameter-filter[package_name]"><code>filter[package_name]</code></a>, <a href="#parameter-filter[package_version]"><code>filter[package_version]</code></a>, <a href="#parameter-filter[license_name]"><code>filter[license_name]</code></a>, <a href="#parameter-filter[license_type]"><code>filter[license_type]</code></a></td>
    <td>Get a list of assets SBOMs for an organization.<br /><br />### Pagination<br /><br />Please review the [Pagination section] for the "List Vulnerabilities" endpoint.<br /><br />### Filtering<br /><br />Please review the [Filtering section] for the "List Vulnerabilities" endpoint.<br /><br />### Metadata<br /><br />Please review the [Metadata section] for the "List Vulnerabilities" endpoint.</td>
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
<tr id="parameter-asset_type">
    <td><CopyableCode code="asset_type" /></td>
    <td><code>string</code></td>
    <td>The type of the asset for the SBOM request.</td>
</tr>
<tr id="parameter-filter[asset_name]">
    <td><CopyableCode code="filter[asset_name]" /></td>
    <td><code>string</code></td>
    <td>The name of the asset for the SBOM request. (example: github.com/datadog/datadog-agent)</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>(default: datadoghq.com)</td>
</tr>
<tr id="parameter-filter[asset_name]">
    <td><CopyableCode code="filter[asset_name]" /></td>
    <td><code>string</code></td>
    <td>The name of the asset for the SBOM request. (example: github.com/datadog/datadog-agent)</td>
</tr>
<tr id="parameter-filter[asset_type]">
    <td><CopyableCode code="filter[asset_type]" /></td>
    <td><code>string</code></td>
    <td>The type of the assets for the SBOM request.</td>
</tr>
<tr id="parameter-filter[license_name]">
    <td><CopyableCode code="filter[license_name]" /></td>
    <td><code>string</code></td>
    <td>The software license name of the component that is a dependency of an asset. (example: Apache-2.0)</td>
</tr>
<tr id="parameter-filter[license_type]">
    <td><CopyableCode code="filter[license_type]" /></td>
    <td><code>string</code></td>
    <td>The software license type of the component that is a dependency of an asset.</td>
</tr>
<tr id="parameter-filter[package_name]">
    <td><CopyableCode code="filter[package_name]" /></td>
    <td><code>string</code></td>
    <td>The name of the component that is a dependency of an asset. (example: opentelemetry-api)</td>
</tr>
<tr id="parameter-filter[package_version]">
    <td><CopyableCode code="filter[package_version]" /></td>
    <td><code>string</code></td>
    <td>The version of the component that is a dependency of an asset. (example: 1.33.1)</td>
</tr>
<tr id="parameter-filter[repo_digest]">
    <td><CopyableCode code="filter[repo_digest]" /></td>
    <td><code>string</code></td>
    <td>The container image `repo_digest` for the SBOM request. When the requested asset type is 'Image', this filter is mandatory. (example: sha256:0ae7da091191787229d321e3638e39c319a97d6e20f927d465b519d699215bf7)</td>
</tr>
<tr id="parameter-page[number]">
    <td><CopyableCode code="page[number]" /></td>
    <td><code>integer (int64)</code></td>
    <td>The page number to be retrieved. It should be equal to or greater than 1. (example: 1)</td>
</tr>
<tr id="parameter-page[token]">
    <td><CopyableCode code="page[token]" /></td>
    <td><code>string</code></td>
    <td>Its value must come from the `links` section of the response of the first request. Do not manually edit it. (example: b82cef018aab81ed1d4bb4xb35xxfc065da7efa685fbcecdbd338f3015e3afabbbfa3a911b4984_721ee28a-zecb-4e45-9960-c42065b574f4)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_sbom"
    values={[
        { label: 'get_sbom', value: 'get_sbom' },
        { label: 'list_assets_sboms', value: 'list_assets_sboms' }
    ]}
>
<TabItem value="get_sbom">

Get a single SBOM related to an asset by its type and name.<br />

```sql
SELECT
id,
attributes,
type
FROM datadog.security.sboms
WHERE asset_type = '{{ asset_type }}' -- required
AND filter[asset_name] = '{{ filter[asset_name] }}' -- required
AND region = '{{ region }}' -- required
AND filter[repo_digest] = '{{ filter[repo_digest] }}'
;
```
</TabItem>
<TabItem value="list_assets_sboms">

Get a list of assets SBOMs for an organization.<br /><br />### Pagination<br /><br />Please review the [Pagination section] for the "List Vulnerabilities" endpoint.<br /><br />### Filtering<br /><br />Please review the [Filtering section] for the "List Vulnerabilities" endpoint.<br /><br />### Metadata<br /><br />Please review the [Metadata section] for the "List Vulnerabilities" endpoint.

```sql
SELECT
id,
attributes,
type
FROM datadog.security.sboms
WHERE region = '{{ region }}' -- required
AND page[token] = '{{ page[token] }}'
AND page[number] = '{{ page[number] }}'
AND filter[asset_type] = '{{ filter[asset_type] }}'
AND filter[asset_name] = '{{ filter[asset_name] }}'
AND filter[package_name] = '{{ filter[package_name] }}'
AND filter[package_version] = '{{ filter[package_version] }}'
AND filter[license_name] = '{{ filter[license_name] }}'
AND filter[license_type] = '{{ filter[license_type] }}'
;
```
</TabItem>
</Tabs>
