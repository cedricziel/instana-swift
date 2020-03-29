# HealthAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHealthState**](HealthAPI.md#gethealthstate) | **GET** /api/instana/health | Basic health traffic light
[**getVersion**](HealthAPI.md#getversion) | **GET** /api/instana/version | API version information


# **getHealthState**
```swift
    open class func getHealthState(completion: @escaping (_ data: HealthState?, _ error: Error?) -> Void)
```

Basic health traffic light

The returned JSON object will provide a health property which contains a simple traffic light (GREEN/YELLO/RED). For any non-Green-state a list  of reasons will be provided in the messages array.  Possible messages: * No data being processed * No data arriving from agents 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// Basic health traffic light
HealthAPI.getHealthState() { (response, error) in
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

[**HealthState**](HealthState.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVersion**
```swift
    open class func getVersion(completion: @escaping (_ data: InstanaVersionInfo?, _ error: Error?) -> Void)
```

API version information

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// API version information
HealthAPI.getVersion() { (response, error) in
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

[**InstanaVersionInfo**](InstanaVersionInfo.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

