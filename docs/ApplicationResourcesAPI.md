# ApplicationResourcesAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applicationResourcesEndpoints**](ApplicationResourcesAPI.md#applicationresourcesendpoints) | **GET** /api/application-monitoring/applications/services/endpoints | Get endpoints
[**getApplicationServices**](ApplicationResourcesAPI.md#getapplicationservices) | **GET** /api/application-monitoring/applications/services | Get applications/services
[**getApplications**](ApplicationResourcesAPI.md#getapplications) | **GET** /api/application-monitoring/applications | Get applications
[**getServices**](ApplicationResourcesAPI.md#getservices) | **GET** /api/application-monitoring/services | Get services


# **applicationResourcesEndpoints**
```swift
    open class func applicationResourcesEndpoints(nameFilter: String? = nil, types: [String]? = nil, technologies: [String]? = nil, windowSize: Int64? = nil, to: Int64? = nil, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: EndpointResult?, _ error: Error?) -> Void)
```

Get endpoints

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let nameFilter = "nameFilter_example" // String |  (optional)
let types = ["inner_example"] // [String] |  (optional)
let technologies = ["inner_example"] // [String] |  (optional)
let windowSize = 987 // Int64 |  (optional)
let to = 987 // Int64 |  (optional)
let page = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get endpoints
ApplicationResourcesAPI.applicationResourcesEndpoints(nameFilter: nameFilter, types: types, technologies: technologies, windowSize: windowSize, to: to, page: page, pageSize: pageSize) { (response, error) in
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
 **nameFilter** | **String** |  | [optional] 
 **types** | [**[String]**](String.md) |  | [optional] 
 **technologies** | [**[String]**](String.md) |  | [optional] 
 **windowSize** | **Int64** |  | [optional] 
 **to** | **Int64** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 

### Return type

[**EndpointResult**](EndpointResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApplicationServices**
```swift
    open class func getApplicationServices(nameFilter: String? = nil, windowSize: Int64? = nil, to: Int64? = nil, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceResult?, _ error: Error?) -> Void)
```

Get applications/services

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let nameFilter = "nameFilter_example" // String |  (optional)
let windowSize = 987 // Int64 |  (optional)
let to = 987 // Int64 |  (optional)
let page = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get applications/services
ApplicationResourcesAPI.getApplicationServices(nameFilter: nameFilter, windowSize: windowSize, to: to, page: page, pageSize: pageSize) { (response, error) in
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
 **nameFilter** | **String** |  | [optional] 
 **windowSize** | **Int64** |  | [optional] 
 **to** | **Int64** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 

### Return type

[**ServiceResult**](ServiceResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApplications**
```swift
    open class func getApplications(nameFilter: String? = nil, windowSize: Int64? = nil, to: Int64? = nil, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ApplicationResult?, _ error: Error?) -> Void)
```

Get applications

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let nameFilter = "nameFilter_example" // String |  (optional)
let windowSize = 987 // Int64 |  (optional)
let to = 987 // Int64 |  (optional)
let page = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get applications
ApplicationResourcesAPI.getApplications(nameFilter: nameFilter, windowSize: windowSize, to: to, page: page, pageSize: pageSize) { (response, error) in
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
 **nameFilter** | **String** |  | [optional] 
 **windowSize** | **Int64** |  | [optional] 
 **to** | **Int64** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 

### Return type

[**ApplicationResult**](ApplicationResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServices**
```swift
    open class func getServices(nameFilter: String? = nil, windowSize: Int64? = nil, to: Int64? = nil, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceResult?, _ error: Error?) -> Void)
```

Get services

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let nameFilter = "nameFilter_example" // String |  (optional)
let windowSize = 987 // Int64 |  (optional)
let to = 987 // Int64 |  (optional)
let page = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get services
ApplicationResourcesAPI.getServices(nameFilter: nameFilter, windowSize: windowSize, to: to, page: page, pageSize: pageSize) { (response, error) in
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
 **nameFilter** | **String** |  | [optional] 
 **windowSize** | **Int64** |  | [optional] 
 **to** | **Int64** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 

### Return type

[**ServiceResult**](ServiceResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

