# UsageAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllUsage**](UsageAPI.md#getallusage) | **GET** /api/instana/usage/api | API usage by customer
[**getHostsPerDay**](UsageAPI.md#gethostsperday) | **GET** /api/instana/usage/hosts/{day}/{month}/{year} | Host count day / month / year
[**getHostsPerMonth**](UsageAPI.md#gethostspermonth) | **GET** /api/instana/usage/hosts/{month}/{year} | Host count month / year
[**getUsagePerDay**](UsageAPI.md#getusageperday) | **GET** /api/instana/usage/api/{day}/{month}/{year} | API usage day / month / year
[**getUsagePerMonth**](UsageAPI.md#getusagepermonth) | **GET** /api/instana/usage/api/{month}/{year} | API usage month / year


# **getAllUsage**
```swift
    open class func getAllUsage(completion: @escaping (_ data: [UsageResult]?, _ error: Error?) -> Void)
```

API usage by customer

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// API usage by customer
UsageAPI.getAllUsage() { (response, error) in
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

[**[UsageResult]**](UsageResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHostsPerDay**
```swift
    open class func getHostsPerDay(day: Int, month: Int, year: Int, completion: @escaping (_ data: [UsageResult]?, _ error: Error?) -> Void)
```

Host count day / month / year

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let day = 987 // Int | 
let month = 987 // Int | 
let year = 987 // Int | 

// Host count day / month / year
UsageAPI.getHostsPerDay(day: day, month: month, year: year) { (response, error) in
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
 **day** | **Int** |  | 
 **month** | **Int** |  | 
 **year** | **Int** |  | 

### Return type

[**[UsageResult]**](UsageResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHostsPerMonth**
```swift
    open class func getHostsPerMonth(month: Int, year: Int, completion: @escaping (_ data: [UsageResult]?, _ error: Error?) -> Void)
```

Host count month / year

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let month = 987 // Int | 
let year = 987 // Int | 

// Host count month / year
UsageAPI.getHostsPerMonth(month: month, year: year) { (response, error) in
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
 **month** | **Int** |  | 
 **year** | **Int** |  | 

### Return type

[**[UsageResult]**](UsageResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsagePerDay**
```swift
    open class func getUsagePerDay(day: Int, month: Int, year: Int, completion: @escaping (_ data: [UsageResult]?, _ error: Error?) -> Void)
```

API usage day / month / year

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let day = 987 // Int | 
let month = 987 // Int | 
let year = 987 // Int | 

// API usage day / month / year
UsageAPI.getUsagePerDay(day: day, month: month, year: year) { (response, error) in
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
 **day** | **Int** |  | 
 **month** | **Int** |  | 
 **year** | **Int** |  | 

### Return type

[**[UsageResult]**](UsageResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsagePerMonth**
```swift
    open class func getUsagePerMonth(month: Int, year: Int, completion: @escaping (_ data: [UsageResult]?, _ error: Error?) -> Void)
```

API usage month / year

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let month = 987 // Int | 
let year = 987 // Int | 

// API usage month / year
UsageAPI.getUsagePerMonth(month: month, year: year) { (response, error) in
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
 **month** | **Int** |  | 
 **year** | **Int** |  | 

### Return type

[**[UsageResult]**](UsageResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

