# InfrastructureResourcesAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInfrastructureViewTree**](InfrastructureResourcesAPI.md#getinfrastructureviewtree) | **GET** /api/infrastructure-monitoring/graph/views | Get view tree
[**getMonitoringState**](InfrastructureResourcesAPI.md#getmonitoringstate) | **GET** /api/infrastructure-monitoring/monitoring-state | Monitored host count
[**getRelatedHosts**](InfrastructureResourcesAPI.md#getrelatedhosts) | **GET** /api/infrastructure-monitoring/graph/related-hosts/{snapshotId} | Related hosts
[**softwareVersions**](InfrastructureResourcesAPI.md#softwareversions) | **GET** /api/infrastructure-monitoring/software/versions | Get installed software


# **getInfrastructureViewTree**
```swift
    open class func getInfrastructureViewTree(completion: @escaping (_ data: TreeNodeResult?, _ error: Error?) -> Void)
```

Get view tree

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// Get view tree
InfrastructureResourcesAPI.getInfrastructureViewTree() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**TreeNodeResult**](TreeNodeResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMonitoringState**
```swift
    open class func getMonitoringState(completion: @escaping (_ data: MonitoringState?, _ error: Error?) -> Void)
```

Monitored host count

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// Monitored host count
InfrastructureResourcesAPI.getMonitoringState() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**MonitoringState**](MonitoringState.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRelatedHosts**
```swift
    open class func getRelatedHosts(snapshotId: String, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Related hosts

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let snapshotId = "snapshotId_example" // String | 

// Related hosts
InfrastructureResourcesAPI.getRelatedHosts(snapshotId: snapshotId) { (response, error) in
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
 **snapshotId** | **String** |  | 

### Return type

**[String]**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **softwareVersions**
```swift
    open class func softwareVersions(time: Int64? = nil, origin: String? = nil, type: String? = nil, name: String? = nil, version: String? = nil, completion: @escaping (_ data: [SoftwareVersion]?, _ error: Error?) -> Void)
```

Get installed software

Retrieve information about the software you are running. This includes runtime and package manager information.  The `name`, `version`, `origin` and `type` parameters are optional filters that can be used to reduce the result data set.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let time = 987 // Int64 |  (optional)
let origin = "origin_example" // String |  (optional)
let type = "type_example" // String |  (optional)
let name = "name_example" // String |  (optional)
let version = "version_example" // String |  (optional)

// Get installed software
InfrastructureResourcesAPI.softwareVersions(time: time, origin: origin, type: type, name: name, version: version) { (response, error) in
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
 **time** | **Int64** |  | [optional] 
 **origin** | **String** |  | [optional] 
 **type** | **String** |  | [optional] 
 **name** | **String** |  | [optional] 
 **version** | **String** |  | [optional] 

### Return type

[**[SoftwareVersion]**](SoftwareVersion.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

