# WebsiteConfigurationAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](WebsiteConfigurationAPI.md#callget) | **GET** /api/website-monitoring/config | Get configured websites
[**delete1**](WebsiteConfigurationAPI.md#delete1) | **DELETE** /api/website-monitoring/config/{websiteId} | Remove website
[**post**](WebsiteConfigurationAPI.md#post) | **POST** /api/website-monitoring/config | Configure new website
[**rename**](WebsiteConfigurationAPI.md#rename) | **PUT** /api/website-monitoring/config/{websiteId} | Rename website


# **callGet**
```swift
    open class func callGet(completion: @escaping (_ data: [Website]?, _ error: Error?) -> Void)
```

Get configured websites

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// Get configured websites
WebsiteConfigurationAPI.callGet() { (response, error) in
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

[**[Website]**](Website.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete1**
```swift
    open class func delete1(websiteId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove website

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let websiteId = "websiteId_example" // String | 

// Remove website
WebsiteConfigurationAPI.delete1(websiteId: websiteId) { (response, error) in
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
 **websiteId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post**
```swift
    open class func post(name: String? = nil, completion: @escaping (_ data: Website?, _ error: Error?) -> Void)
```

Configure new website

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let name = "name_example" // String |  (optional)

// Configure new website
WebsiteConfigurationAPI.post(name: name) { (response, error) in
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
 **name** | **String** |  | [optional] 

### Return type

[**Website**](Website.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rename**
```swift
    open class func rename(websiteId: String, name: String? = nil, completion: @escaping (_ data: Website?, _ error: Error?) -> Void)
```

Rename website

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let websiteId = "websiteId_example" // String | 
let name = "name_example" // String |  (optional)

// Rename website
WebsiteConfigurationAPI.rename(websiteId: websiteId, name: name) { (response, error) in
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
 **websiteId** | **String** |  | 
 **name** | **String** |  | [optional] 

### Return type

[**Website**](Website.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

