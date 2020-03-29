# SyntheticCallsAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSyntheticCall**](SyntheticCallsAPI.md#deletesyntheticcall) | **DELETE** /api/settings/synthetic-calls | Delete synthetic call configurations
[**getSyntheticCalls**](SyntheticCallsAPI.md#getsyntheticcalls) | **GET** /api/settings/synthetic-calls | Synthetic call configurations
[**updateSyntheticCall**](SyntheticCallsAPI.md#updatesyntheticcall) | **PUT** /api/settings/synthetic-calls | Update synthetic call configurations


# **deleteSyntheticCall**
```swift
    open class func deleteSyntheticCall(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete synthetic call configurations

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// Delete synthetic call configurations
SyntheticCallsAPI.deleteSyntheticCall() { (response, error) in
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSyntheticCalls**
```swift
    open class func getSyntheticCalls(completion: @escaping (_ data: SyntheticCallWithDefaultsConfig?, _ error: Error?) -> Void)
```

Synthetic call configurations

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// Synthetic call configurations
SyntheticCallsAPI.getSyntheticCalls() { (response, error) in
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

[**SyntheticCallWithDefaultsConfig**](SyntheticCallWithDefaultsConfig.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSyntheticCall**
```swift
    open class func updateSyntheticCall(syntheticCallConfig: SyntheticCallConfig, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update synthetic call configurations

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let syntheticCallConfig = SyntheticCallConfig(defaultRulesEnabled: false, customRules: [SyntheticCallRule(name: "name_example", description: "description_example", matchSpecification: 123, enabled: false)]) // SyntheticCallConfig | 

// Update synthetic call configurations
SyntheticCallsAPI.updateSyntheticCall(syntheticCallConfig: syntheticCallConfig) { (response, error) in
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
 **syntheticCallConfig** | [**SyntheticCallConfig**](SyntheticCallConfig.md) |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

