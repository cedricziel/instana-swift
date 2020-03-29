# APITokenAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteApiToken**](APITokenAPI.md#deleteapitoken) | **DELETE** /api/settings/api-tokens/{apiTokenId} | Delete API token
[**getApiToken**](APITokenAPI.md#getapitoken) | **GET** /api/settings/api-tokens/{apiTokenId} | API token
[**getApiTokens**](APITokenAPI.md#getapitokens) | **GET** /api/settings/api-tokens | All API tokes
[**putApiToken**](APITokenAPI.md#putapitoken) | **PUT** /api/settings/api-tokens/{apiTokenId} | Create or update an API token


# **deleteApiToken**
```swift
    open class func deleteApiToken(apiTokenId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete API token

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let apiTokenId = "apiTokenId_example" // String | 

// Delete API token
APITokenAPI.deleteApiToken(apiTokenId: apiTokenId) { (response, error) in
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
 **apiTokenId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiToken**
```swift
    open class func getApiToken(apiTokenId: String, completion: @escaping (_ data: ApiToken?, _ error: Error?) -> Void)
```

API token

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let apiTokenId = "apiTokenId_example" // String | 

// API token
APITokenAPI.getApiToken(apiTokenId: apiTokenId) { (response, error) in
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
 **apiTokenId** | **String** |  | 

### Return type

[**ApiToken**](ApiToken.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiTokens**
```swift
    open class func getApiTokens(completion: @escaping (_ data: [ApiToken]?, _ error: Error?) -> Void)
```

All API tokes

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// All API tokes
APITokenAPI.getApiTokens() { (response, error) in
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

[**[ApiToken]**](ApiToken.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putApiToken**
```swift
    open class func putApiToken(apiTokenId: String, apiToken: ApiToken, completion: @escaping (_ data: ApiToken?, _ error: Error?) -> Void)
```

Create or update an API token

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let apiTokenId = "apiTokenId_example" // String | 
let apiToken = ApiToken(id: "id_example", name: "name_example", canConfigureServiceMapping: false, canConfigureEumApplications: false, canConfigureMobileAppMonitoring: false, canConfigureUsers: false, canInstallNewAgents: false, canSeeUsageInformation: false, canConfigureIntegrations: false, canSeeOnPremLicenseInformation: false, canConfigureRoles: false, canConfigureCustomAlerts: false, canConfigureApiTokens: false, canConfigureAgentRunMode: false, canViewAuditLog: false, canConfigureObjectives: false, canConfigureAgents: false, canConfigureAuthenticationMethods: false, canConfigureApplications: false, canConfigureTeams: false, canConfigureReleases: false, canConfigureLogManagement: false) // ApiToken | 

// Create or update an API token
APITokenAPI.putApiToken(apiTokenId: apiTokenId, apiToken: apiToken) { (response, error) in
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
 **apiTokenId** | **String** |  | 
 **apiToken** | [**ApiToken**](ApiToken.md) |  | 

### Return type

[**ApiToken**](ApiToken.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

