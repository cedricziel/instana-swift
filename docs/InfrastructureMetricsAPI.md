# InfrastructureMetricsAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInfrastructureMetrics**](InfrastructureMetricsAPI.md#getinfrastructuremetrics) | **POST** /api/infrastructure-monitoring/metrics | Get infrastructure metrics
[**getSnapshot**](InfrastructureMetricsAPI.md#getsnapshot) | **GET** /api/infrastructure-monitoring/snapshots/{id} | Get snapshot details
[**getSnapshots**](InfrastructureMetricsAPI.md#getsnapshots) | **GET** /api/infrastructure-monitoring/snapshots | Search snapshots


# **getInfrastructureMetrics**
```swift
    open class func getInfrastructureMetrics(context: Bool? = nil, offline: Bool? = nil, getCombinedMetrics: GetCombinedMetrics? = nil, completion: @escaping (_ data: InfrastructureMetricResult?, _ error: Error?) -> Void)
```

Get infrastructure metrics

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let context = true // Bool |  (optional)
let offline = true // Bool |  (optional)
let getCombinedMetrics = GetCombinedMetrics(timeFrame: TimeFrame(windowSize: 123, to: 123), plugin: "plugin_example", query: "query_example", snapshotIds: ["snapshotIds_example"], rollup: 123, metrics: ["metrics_example"]) // GetCombinedMetrics |  (optional)

// Get infrastructure metrics
InfrastructureMetricsAPI.getInfrastructureMetrics(context: context, offline: offline, getCombinedMetrics: getCombinedMetrics) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context** | **Bool** |  | [optional] 
 **offline** | **Bool** |  | [optional] 
 **getCombinedMetrics** | [**GetCombinedMetrics**](GetCombinedMetrics.md) |  | [optional] 

### Return type

[**InfrastructureMetricResult**](InfrastructureMetricResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSnapshot**
```swift
    open class func getSnapshot(id: String, to: Int64? = nil, windowSize: Int64? = nil, completion: @escaping (_ data: SnapshotItem?, _ error: Error?) -> Void)
```

Get snapshot details

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 
let to = 987 // Int64 |  (optional)
let windowSize = 987 // Int64 |  (optional)

// Get snapshot details
InfrastructureMetricsAPI.getSnapshot(id: id, to: to, windowSize: windowSize) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **to** | **Int64** |  | [optional] 
 **windowSize** | **Int64** |  | [optional] 

### Return type

[**SnapshotItem**](SnapshotItem.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSnapshots**
```swift
    open class func getSnapshots(query: String? = nil, to: Int64? = nil, windowSize: Int64? = nil, size: Int? = nil, plugin: String? = nil, offline: Bool? = nil, completion: @escaping (_ data: SnapshotResult?, _ error: Error?) -> Void)
```

Search snapshots

These APIs can be used to retrieve information about hosts, processes, JVMs and other entities that we are calling snapshots. A snapshot represents static information about an entity as it was at a specific point in time. To clarify:  **Static information** is any information which is seldom changing, e.g. process IDs, host FQDNs or a list of host hard disks. The counterpart to static information are metrics which have a much higher change rate, e.g. host CPU usage or JVM garbage collection activity. Snapshots only contain static information.  - Snapshots are **versioned** and represent an entity's state for a specific point in time. While snapshots only contain static information, even that information may change. For example you may add another hard disk to a server. For such a change, a new snapshot would be created.  

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let query = "query_example" // String |  (optional)
let to = 987 // Int64 |  (optional)
let windowSize = 987 // Int64 |  (optional)
let size = 987 // Int |  (optional)
let plugin = "plugin_example" // String |  (optional)
let offline = true // Bool |  (optional)

// Search snapshots
InfrastructureMetricsAPI.getSnapshots(query: query, to: to, windowSize: windowSize, size: size, plugin: plugin, offline: offline) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String** |  | [optional] 
 **to** | **Int64** |  | [optional] 
 **windowSize** | **Int64** |  | [optional] 
 **size** | **Int** |  | [optional] 
 **plugin** | **String** |  | [optional] 
 **offline** | **Bool** |  | [optional] 

### Return type

[**SnapshotResult**](SnapshotResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

