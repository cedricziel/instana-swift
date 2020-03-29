# ReleasesAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteRelease**](ReleasesAPI.md#deleterelease) | **DELETE** /api/releases/{releaseId} | Delete release
[**getAllReleases**](ReleasesAPI.md#getallreleases) | **GET** /api/releases | Get all releases
[**getRelease**](ReleasesAPI.md#getrelease) | **GET** /api/releases/{releaseId} | Get release
[**postRelease**](ReleasesAPI.md#postrelease) | **POST** /api/releases | Create release
[**putRelease**](ReleasesAPI.md#putrelease) | **PUT** /api/releases/{releaseId} | Update release


# **deleteRelease**
```swift
    open class func deleteRelease(releaseId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete release

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let releaseId = "releaseId_example" // String | 

// Delete release
ReleasesAPI.deleteRelease(releaseId: releaseId) { (response, error) in
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
 **releaseId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllReleases**
```swift
    open class func getAllReleases(from: Int64? = nil, to: Int64? = nil, maxResults: Int? = nil, completion: @escaping (_ data: [ReleaseWithMetadata]?, _ error: Error?) -> Void)
```

Get all releases

This endpoint exposes the Releases functionality.  These APIs can be used to create, update, delete and fetch already existing releases.  ## Mandatory Parameters:  **releaseId:** A unique identifier assigned to each release.  ## Optional Parameters:  **name:** Name of the exact release you want to retrieve, eg. \"Release-161\", \"Release-162\".  **start:** Start time of the particular release.  **from:** Filters the releases to retrieve only the releases which have \"start\" time greater than or equal to this value.  **to:** Filters the releases to retrieve only the releases which have \"start\" time lesser than or equal to this value.  **maxResults:** Maximum number of releases to be retrieved.  ## Defaults:  **from, to, maxResults:** By default these parameters are not set.  

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let from = 987 // Int64 |  (optional)
let to = 987 // Int64 |  (optional)
let maxResults = 987 // Int |  (optional)

// Get all releases
ReleasesAPI.getAllReleases(from: from, to: to, maxResults: maxResults) { (response, error) in
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
 **from** | **Int64** |  | [optional] 
 **to** | **Int64** |  | [optional] 
 **maxResults** | **Int** |  | [optional] 

### Return type

[**[ReleaseWithMetadata]**](ReleaseWithMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRelease**
```swift
    open class func getRelease(releaseId: String, completion: @escaping (_ data: ReleaseWithMetadata?, _ error: Error?) -> Void)
```

Get release

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let releaseId = "releaseId_example" // String | 

// Get release
ReleasesAPI.getRelease(releaseId: releaseId) { (response, error) in
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
 **releaseId** | **String** |  | 

### Return type

[**ReleaseWithMetadata**](ReleaseWithMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postRelease**
```swift
    open class func postRelease(release: Release, completion: @escaping (_ data: ReleaseWithMetadata?, _ error: Error?) -> Void)
```

Create release

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let release = Release(name: "name_example", start: 123) // Release | 

// Create release
ReleasesAPI.postRelease(release: release) { (response, error) in
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
 **release** | [**Release**](Release.md) |  | 

### Return type

[**ReleaseWithMetadata**](ReleaseWithMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putRelease**
```swift
    open class func putRelease(releaseId: String, release: Release, completion: @escaping (_ data: ReleaseWithMetadata?, _ error: Error?) -> Void)
```

Update release

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let releaseId = "releaseId_example" // String | 
let release = Release(name: "name_example", start: 123) // Release | 

// Update release
ReleasesAPI.putRelease(releaseId: releaseId, release: release) { (response, error) in
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
 **releaseId** | **String** |  | 
 **release** | [**Release**](Release.md) |  | 

### Return type

[**ReleaseWithMetadata**](ReleaseWithMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

