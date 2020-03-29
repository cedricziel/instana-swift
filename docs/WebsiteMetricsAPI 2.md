# WebsiteMetricsAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBeaconMetrics**](WebsiteMetricsAPI.md#getbeaconmetrics) | **POST** /api/website-monitoring/metrics | Get beacon metrics
[**getPageLoad**](WebsiteMetricsAPI.md#getpageload) | **GET** /api/website-monitoring/page-load | Get page load


# **getBeaconMetrics**
```swift
    open class func getBeaconMetrics(getWebsiteMetrics: GetWebsiteMetrics? = nil, completion: @escaping (_ data: WebsiteMetricResult?, _ error: Error?) -> Void)
```

Get beacon metrics

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let getWebsiteMetrics = GetWebsiteMetrics(timeFrame: TimeFrame(windowSize: 123, to: 123), metrics: [WebsiteMonitoringMetricsConfiguration(metric: "metric_example", granularity: 123, aggregation: "aggregation_example")], type: "type_example", tagFilters: [TagFilter(name: "name_example", value: "value_example", _operator: "_operator_example", entity: "entity_example")]) // GetWebsiteMetrics |  (optional)

// Get beacon metrics
WebsiteMetricsAPI.getBeaconMetrics(getWebsiteMetrics: getWebsiteMetrics) { (response, error) in
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
 **getWebsiteMetrics** | [**GetWebsiteMetrics**](GetWebsiteMetrics.md) |  | [optional] 

### Return type

[**WebsiteMetricResult**](WebsiteMetricResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPageLoad**
```swift
    open class func getPageLoad(id: String, timestamp: Int64, completion: @escaping (_ data: [WebsiteMonitoringBeacon]?, _ error: Error?) -> Void)
```

Get page load

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 
let timestamp = 987 // Int64 | 

// Get page load
WebsiteMetricsAPI.getPageLoad(id: id, timestamp: timestamp) { (response, error) in
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
 **timestamp** | **Int64** |  | 

### Return type

[**[WebsiteMonitoringBeacon]**](WebsiteMonitoringBeacon.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

