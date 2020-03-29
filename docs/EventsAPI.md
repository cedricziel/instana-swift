# EventsAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEvent**](EventsAPI.md#getevent) | **GET** /api/events/{eventId} | Get Event
[**getEvents**](EventsAPI.md#getevents) | **GET** /api/events | Get alerts


# **getEvent**
```swift
    open class func getEvent(eventId: String, completion: @escaping (_ data: EventResult?, _ error: Error?) -> Void)
```

Get Event

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let eventId = "eventId_example" // String | 

// Get Event
EventsAPI.getEvent(eventId: eventId) { (response, error) in
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
 **eventId** | **String** |  | 

### Return type

[**EventResult**](EventResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEvents**
```swift
    open class func getEvents(windowSize: Int64? = nil, from: Int64? = nil, to: Int64? = nil, excludeTriggeredBefore: Bool? = nil, completion: @escaping (_ data: [EventResult]?, _ error: Error?) -> Void)
```

Get alerts

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let windowSize = 987 // Int64 |  (optional)
let from = 987 // Int64 |  (optional)
let to = 987 // Int64 |  (optional)
let excludeTriggeredBefore = true // Bool |  (optional)

// Get alerts
EventsAPI.getEvents(windowSize: windowSize, from: from, to: to, excludeTriggeredBefore: excludeTriggeredBefore) { (response, error) in
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
 **windowSize** | **Int64** |  | [optional] 
 **from** | **Int64** |  | [optional] 
 **to** | **Int64** |  | [optional] 
 **excludeTriggeredBefore** | **Bool** |  | [optional] 

### Return type

[**[EventResult]**](EventResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

