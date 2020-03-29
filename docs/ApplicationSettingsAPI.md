# ApplicationSettingsAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addApplicationConfig**](ApplicationSettingsAPI.md#addapplicationconfig) | **POST** /api/application-monitoring/settings/application | Add application configuration
[**addServiceConfig**](ApplicationSettingsAPI.md#addserviceconfig) | **POST** /api/application-monitoring/settings/service | Add service configuration
[**createEndpointConfig**](ApplicationSettingsAPI.md#createendpointconfig) | **POST** /api/application-monitoring/settings/http-endpoint | Create endpoint configuration
[**deleteApplicationConfig**](ApplicationSettingsAPI.md#deleteapplicationconfig) | **DELETE** /api/application-monitoring/settings/application/{id} | Delete application configuration
[**deleteEndpointConfig**](ApplicationSettingsAPI.md#deleteendpointconfig) | **DELETE** /api/application-monitoring/settings/http-endpoint/{id} | Delete endpoint configuration
[**deleteServiceConfig**](ApplicationSettingsAPI.md#deleteserviceconfig) | **DELETE** /api/application-monitoring/settings/service/{id} | Delete service configuration
[**getApplicationConfig**](ApplicationSettingsAPI.md#getapplicationconfig) | **GET** /api/application-monitoring/settings/application/{id} | Application configuration
[**getApplicationConfigs**](ApplicationSettingsAPI.md#getapplicationconfigs) | **GET** /api/application-monitoring/settings/application | All Application configurations
[**getEndpointConfig**](ApplicationSettingsAPI.md#getendpointconfig) | **GET** /api/application-monitoring/settings/http-endpoint/{id} | Endpoint configuration
[**getEndpointConfigs**](ApplicationSettingsAPI.md#getendpointconfigs) | **GET** /api/application-monitoring/settings/http-endpoint | All Endpoint configurations
[**getServiceConfig**](ApplicationSettingsAPI.md#getserviceconfig) | **GET** /api/application-monitoring/settings/service/{id} | Service configuration
[**getServiceConfigs**](ApplicationSettingsAPI.md#getserviceconfigs) | **GET** /api/application-monitoring/settings/service | All service configurations
[**orderServiceConfig**](ApplicationSettingsAPI.md#orderserviceconfig) | **PUT** /api/application-monitoring/settings/service/order | Order of service configuration
[**putApplicationConfig**](ApplicationSettingsAPI.md#putapplicationconfig) | **PUT** /api/application-monitoring/settings/application/{id} | Update application configuration
[**putServiceConfig**](ApplicationSettingsAPI.md#putserviceconfig) | **PUT** /api/application-monitoring/settings/service/{id} | Update service configuration
[**updateEndpointConfig**](ApplicationSettingsAPI.md#updateendpointconfig) | **PUT** /api/application-monitoring/settings/http-endpoint/{id} | Update endpoint configuration


# **addApplicationConfig**
```swift
    open class func addApplicationConfig(applicationConfig: ApplicationConfig, completion: @escaping (_ data: ApplicationConfig?, _ error: Error?) -> Void)
```

Add application configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let applicationConfig = ApplicationConfig(id: "id_example", label: "label_example", matchSpecification: 123, scope: "scope_example", boundaryScope: "boundaryScope_example") // ApplicationConfig | 

// Add application configuration
ApplicationSettingsAPI.addApplicationConfig(applicationConfig: applicationConfig) { (response, error) in
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
 **applicationConfig** | [**ApplicationConfig**](ApplicationConfig.md) |  | 

### Return type

[**ApplicationConfig**](ApplicationConfig.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addServiceConfig**
```swift
    open class func addServiceConfig(serviceConfig: ServiceConfig, completion: @escaping (_ data: ServiceConfig?, _ error: Error?) -> Void)
```

Add service configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let serviceConfig = ServiceConfig(id: "id_example", name: "name_example", comment: "comment_example", label: "label_example", enabled: false, matchSpecification: [ServiceMatchingRule(key: "key_example", value: "value_example")]) // ServiceConfig | 

// Add service configuration
ApplicationSettingsAPI.addServiceConfig(serviceConfig: serviceConfig) { (response, error) in
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
 **serviceConfig** | [**ServiceConfig**](ServiceConfig.md) |  | 

### Return type

[**ServiceConfig**](ServiceConfig.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEndpointConfig**
```swift
    open class func createEndpointConfig(httpEndpointConfig: HttpEndpointConfig, completion: @escaping (_ data: HttpEndpointConfig?, _ error: Error?) -> Void)
```

Create endpoint configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let httpEndpointConfig = HttpEndpointConfig(serviceId: "serviceId_example", endpointNameByFirstPathSegmentRuleEnabled: false, endpointNameByCollectedPathTemplateRuleEnabled: false, rules: [HttpEndpointRule(enabled: false, pathSegments: [HttpPathSegmentMatchingRule(type: "type_example")], testCases: ["testCases_example"])]) // HttpEndpointConfig | 

// Create endpoint configuration
ApplicationSettingsAPI.createEndpointConfig(httpEndpointConfig: httpEndpointConfig) { (response, error) in
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
 **httpEndpointConfig** | [**HttpEndpointConfig**](HttpEndpointConfig.md) |  | 

### Return type

[**HttpEndpointConfig**](HttpEndpointConfig.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApplicationConfig**
```swift
    open class func deleteApplicationConfig(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete application configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 

// Delete application configuration
ApplicationSettingsAPI.deleteApplicationConfig(id: id) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEndpointConfig**
```swift
    open class func deleteEndpointConfig(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete endpoint configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 

// Delete endpoint configuration
ApplicationSettingsAPI.deleteEndpointConfig(id: id) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteServiceConfig**
```swift
    open class func deleteServiceConfig(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete service configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 

// Delete service configuration
ApplicationSettingsAPI.deleteServiceConfig(id: id) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApplicationConfig**
```swift
    open class func getApplicationConfig(id: String, completion: @escaping (_ data: ApplicationConfig?, _ error: Error?) -> Void)
```

Application configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 

// Application configuration
ApplicationSettingsAPI.getApplicationConfig(id: id) { (response, error) in
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

### Return type

[**ApplicationConfig**](ApplicationConfig.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApplicationConfigs**
```swift
    open class func getApplicationConfigs(completion: @escaping (_ data: [ApplicationConfig]?, _ error: Error?) -> Void)
```

All Application configurations

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// All Application configurations
ApplicationSettingsAPI.getApplicationConfigs() { (response, error) in
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

[**[ApplicationConfig]**](ApplicationConfig.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEndpointConfig**
```swift
    open class func getEndpointConfig(id: String, completion: @escaping (_ data: HttpEndpointConfig?, _ error: Error?) -> Void)
```

Endpoint configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 

// Endpoint configuration
ApplicationSettingsAPI.getEndpointConfig(id: id) { (response, error) in
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

### Return type

[**HttpEndpointConfig**](HttpEndpointConfig.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEndpointConfigs**
```swift
    open class func getEndpointConfigs(completion: @escaping (_ data: [HttpEndpointConfig]?, _ error: Error?) -> Void)
```

All Endpoint configurations

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// All Endpoint configurations
ApplicationSettingsAPI.getEndpointConfigs() { (response, error) in
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

[**[HttpEndpointConfig]**](HttpEndpointConfig.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServiceConfig**
```swift
    open class func getServiceConfig(id: String, completion: @escaping (_ data: ServiceConfig?, _ error: Error?) -> Void)
```

Service configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 

// Service configuration
ApplicationSettingsAPI.getServiceConfig(id: id) { (response, error) in
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

### Return type

[**ServiceConfig**](ServiceConfig.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServiceConfigs**
```swift
    open class func getServiceConfigs(completion: @escaping (_ data: [ServiceConfig]?, _ error: Error?) -> Void)
```

All service configurations

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// All service configurations
ApplicationSettingsAPI.getServiceConfigs() { (response, error) in
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

[**[ServiceConfig]**](ServiceConfig.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderServiceConfig**
```swift
    open class func orderServiceConfig(requestBody: [String], completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Order of service configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let requestBody = ["property_example"] // [String] | 

// Order of service configuration
ApplicationSettingsAPI.orderServiceConfig(requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String]**](String.md) |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putApplicationConfig**
```swift
    open class func putApplicationConfig(id: String, applicationConfig: ApplicationConfig, completion: @escaping (_ data: ApplicationConfig?, _ error: Error?) -> Void)
```

Update application configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 
let applicationConfig = ApplicationConfig(id: "id_example", label: "label_example", matchSpecification: 123, scope: "scope_example", boundaryScope: "boundaryScope_example") // ApplicationConfig | 

// Update application configuration
ApplicationSettingsAPI.putApplicationConfig(id: id, applicationConfig: applicationConfig) { (response, error) in
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
 **applicationConfig** | [**ApplicationConfig**](ApplicationConfig.md) |  | 

### Return type

[**ApplicationConfig**](ApplicationConfig.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putServiceConfig**
```swift
    open class func putServiceConfig(id: String, serviceConfig: ServiceConfig, completion: @escaping (_ data: ServiceConfig?, _ error: Error?) -> Void)
```

Update service configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 
let serviceConfig = ServiceConfig(id: "id_example", name: "name_example", comment: "comment_example", label: "label_example", enabled: false, matchSpecification: [ServiceMatchingRule(key: "key_example", value: "value_example")]) // ServiceConfig | 

// Update service configuration
ApplicationSettingsAPI.putServiceConfig(id: id, serviceConfig: serviceConfig) { (response, error) in
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
 **serviceConfig** | [**ServiceConfig**](ServiceConfig.md) |  | 

### Return type

[**ServiceConfig**](ServiceConfig.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEndpointConfig**
```swift
    open class func updateEndpointConfig(id: String, httpEndpointConfig: HttpEndpointConfig, completion: @escaping (_ data: HttpEndpointConfig?, _ error: Error?) -> Void)
```

Update endpoint configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 
let httpEndpointConfig = HttpEndpointConfig(serviceId: "serviceId_example", endpointNameByFirstPathSegmentRuleEnabled: false, endpointNameByCollectedPathTemplateRuleEnabled: false, rules: [HttpEndpointRule(enabled: false, pathSegments: [HttpPathSegmentMatchingRule(type: "type_example")], testCases: ["testCases_example"])]) // HttpEndpointConfig | 

// Update endpoint configuration
ApplicationSettingsAPI.updateEndpointConfig(id: id, httpEndpointConfig: httpEndpointConfig) { (response, error) in
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
 **httpEndpointConfig** | [**HttpEndpointConfig**](HttpEndpointConfig.md) |  | 

### Return type

[**HttpEndpointConfig**](HttpEndpointConfig.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

