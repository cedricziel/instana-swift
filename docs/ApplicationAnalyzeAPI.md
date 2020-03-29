# ApplicationAnalyzeAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCallGroup**](ApplicationAnalyzeAPI.md#getcallgroup) | **POST** /api/application-monitoring/analyze/call-groups | Get grouped call metrics
[**getTrace**](ApplicationAnalyzeAPI.md#gettrace) | **GET** /api/application-monitoring/analyze/traces/{id} | Get trace detail
[**getTraceGroups**](ApplicationAnalyzeAPI.md#gettracegroups) | **POST** /api/application-monitoring/analyze/trace-groups | Get grouped trace metrics
[**getTraces**](ApplicationAnalyzeAPI.md#gettraces) | **POST** /api/application-monitoring/analyze/traces | Get all traces


# **getCallGroup**
```swift
    open class func getCallGroup(fillTimeSeries: Bool? = nil, getCallGroups: GetCallGroups? = nil, completion: @escaping (_ data: CallGroupsResult?, _ error: Error?) -> Void)
```

Get grouped call metrics

This endpoint retrieves the metrics for calls.    **Manditory Paramters:**    **Optional Paramters:**    **Defaults:**    **Limits:**    **Tips:**  

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let fillTimeSeries = true // Bool |  (optional)
let getCallGroups = GetCallGroups(pagination: CursorPagination(retrievalSize: 123, offset: 123, ingestionTime: 123), order: Order(by: "by_example", direction: "direction_example"), timeFrame: TimeFrame(windowSize: 123, to: 123), group: Group(groupbyTag: "groupbyTag_example", groupbyTagSecondLevelKey: "groupbyTagSecondLevelKey_example", groupbyTagEntity: "groupbyTagEntity_example"), tagFilters: [TagFilter(name: "name_example", value: "value_example", _operator: "_operator_example", entity: "entity_example")], metrics: [MetricConfiguration(metric: "metric_example", granularity: 123, aggregation: "aggregation_example")]) // GetCallGroups |  (optional)

// Get grouped call metrics
ApplicationAnalyzeAPI.getCallGroup(fillTimeSeries: fillTimeSeries, getCallGroups: getCallGroups) { (response, error) in
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
 **fillTimeSeries** | **Bool** |  | [optional] 
 **getCallGroups** | [**GetCallGroups**](GetCallGroups.md) |  | [optional] 

### Return type

[**CallGroupsResult**](CallGroupsResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrace**
```swift
    open class func getTrace(id: String, completion: @escaping (_ data: FullTrace?, _ error: Error?) -> Void)
```

Get trace detail

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 

// Get trace detail
ApplicationAnalyzeAPI.getTrace(id: id) { (response, error) in
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

[**FullTrace**](FullTrace.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTraceGroups**
```swift
    open class func getTraceGroups(fillTimeSeries: Bool? = nil, getTraceGroups: GetTraceGroups? = nil, completion: @escaping (_ data: TraceGroupsResult?, _ error: Error?) -> Void)
```

Get grouped trace metrics

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let fillTimeSeries = true // Bool |  (optional)
let getTraceGroups = GetTraceGroups(pagination: CursorPagination(retrievalSize: 123, offset: 123, ingestionTime: 123), order: Order(by: "by_example", direction: "direction_example"), timeFrame: TimeFrame(windowSize: 123, to: 123), group: Group(groupbyTag: "groupbyTag_example", groupbyTagSecondLevelKey: "groupbyTagSecondLevelKey_example", groupbyTagEntity: "groupbyTagEntity_example"), tagFilters: [TagFilter(name: "name_example", value: "value_example", _operator: "_operator_example", entity: "entity_example")], metrics: [MetricConfiguration(metric: "metric_example", granularity: 123, aggregation: "aggregation_example")]) // GetTraceGroups |  (optional)

// Get grouped trace metrics
ApplicationAnalyzeAPI.getTraceGroups(fillTimeSeries: fillTimeSeries, getTraceGroups: getTraceGroups) { (response, error) in
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
 **fillTimeSeries** | **Bool** |  | [optional] 
 **getTraceGroups** | [**GetTraceGroups**](GetTraceGroups.md) |  | [optional] 

### Return type

[**TraceGroupsResult**](TraceGroupsResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTraces**
```swift
    open class func getTraces(getTraces: GetTraces? = nil, completion: @escaping (_ data: TraceResult?, _ error: Error?) -> Void)
```

Get all traces

This endpoint retrieves the metrics for traces.    **Manditory Paramters:**    **Optional Paramters:**    **Defaults:**    **Limits:**    **Tips:**  

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let getTraces = GetTraces(pagination: CursorPagination(retrievalSize: 123, offset: 123, ingestionTime: 123), timeFrame: TimeFrame(windowSize: 123, to: 123), tagFilters: [TagFilter(name: "name_example", value: "value_example", _operator: "_operator_example", entity: "entity_example")]) // GetTraces |  (optional)

// Get all traces
ApplicationAnalyzeAPI.getTraces(getTraces: getTraces) { (response, error) in
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
 **getTraces** | [**GetTraces**](GetTraces.md) |  | [optional] 

### Return type

[**TraceResult**](TraceResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

