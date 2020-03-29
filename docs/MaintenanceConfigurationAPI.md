# MaintenanceConfigurationAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteMaintenanceConfig**](MaintenanceConfigurationAPI.md#deletemaintenanceconfig) | **DELETE** /api/settings/maintenance/{id} | Delete maintenance configuration
[**getMaintenanceConfig**](MaintenanceConfigurationAPI.md#getmaintenanceconfig) | **GET** /api/settings/maintenance/{id} | Maintenance configuration
[**getMaintenanceConfigs**](MaintenanceConfigurationAPI.md#getmaintenanceconfigs) | **GET** /api/settings/maintenance | All maintenance configurations
[**putMaintenanceConfig**](MaintenanceConfigurationAPI.md#putmaintenanceconfig) | **PUT** /api/settings/maintenance/{id} | Create or update maintenance configuration


# **deleteMaintenanceConfig**
```swift
    open class func deleteMaintenanceConfig(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete maintenance configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 

// Delete maintenance configuration
MaintenanceConfigurationAPI.deleteMaintenanceConfig(id: id) { (response, error) in
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

# **getMaintenanceConfig**
```swift
    open class func getMaintenanceConfig(id: String, completion: @escaping (_ data: MaintenanceConfigWithLastUpdated?, _ error: Error?) -> Void)
```

Maintenance configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 

// Maintenance configuration
MaintenanceConfigurationAPI.getMaintenanceConfig(id: id) { (response, error) in
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

[**MaintenanceConfigWithLastUpdated**](MaintenanceConfigWithLastUpdated.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMaintenanceConfigs**
```swift
    open class func getMaintenanceConfigs(completion: @escaping (_ data: [ValidatedMaintenanceConfigWithStatus]?, _ error: Error?) -> Void)
```

All maintenance configurations

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// All maintenance configurations
MaintenanceConfigurationAPI.getMaintenanceConfigs() { (response, error) in
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

[**[ValidatedMaintenanceConfigWithStatus]**](ValidatedMaintenanceConfigWithStatus.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putMaintenanceConfig**
```swift
    open class func putMaintenanceConfig(id: String, maintenanceConfig: MaintenanceConfig, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create or update maintenance configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 
let maintenanceConfig = MaintenanceConfig(id: "id_example", name: "name_example", query: "query_example", windows: [MaintenanceWindow(id: "id_example", start: 123, end: 123)]) // MaintenanceConfig | 

// Create or update maintenance configuration
MaintenanceConfigurationAPI.putMaintenanceConfig(id: id, maintenanceConfig: maintenanceConfig) { (response, error) in
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
 **maintenanceConfig** | [**MaintenanceConfig**](MaintenanceConfig.md) |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

