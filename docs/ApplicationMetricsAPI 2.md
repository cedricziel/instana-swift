# ApplicationMetricsAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApplicationMetrics**](ApplicationMetricsAPI.md#getapplicationmetrics) | **POST** /api/application-monitoring/metrics/applications | Get Application Metrics
[**getEndpointsMetrics**](ApplicationMetricsAPI.md#getendpointsmetrics) | **POST** /api/application-monitoring/metrics/endpoints | Get Endpoint metrics
[**getServicesMetrics**](ApplicationMetricsAPI.md#getservicesmetrics) | **POST** /api/application-monitoring/metrics/services | Get Service metrics


# **getApplicationMetrics**
```swift
    open class func getApplicationMetrics(getApplications: GetApplications? = nil, completion: @escaping (_ data: ApplicationMetricResult?, _ error: Error?) -> Void)
```

Get Application Metrics

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let getApplications = GetApplications(pagination: Pagination(page: 123, pageSize: 123), order: Order(by: "by_example", direction: "direction_example"), timeFrame: TimeFrame(windowSize: 123, to: 123), metrics: [AppDataMetricConfiguration(metric: "metric_example", granularity: 123, aggregation: "aggregation_example")], nameFilter: "nameFilter_example", applicationId: "applicationId_example", serviceId: "serviceId_example", endpointId: "endpointId_example", endpointTypes: ["endpointTypes_example"], technologies: ["technologies_example"]) // GetApplications |  (optional)

// Get Application Metrics
ApplicationMetricsAPI.getApplicationMetrics(getApplications: getApplications) { (response, error) in
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
 **getApplications** | [**GetApplications**](GetApplications.md) |  | [optional] 

### Return type

[**ApplicationMetricResult**](ApplicationMetricResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEndpointsMetrics**
```swift
    open class func getEndpointsMetrics(getEndpoints: GetEndpoints? = nil, completion: @escaping (_ data: EndpointMetricResult?, _ error: Error?) -> Void)
```

Get Endpoint metrics

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let getEndpoints = GetEndpoints(pagination: Pagination(page: 123, pageSize: 123), order: Order(by: "by_example", direction: "direction_example"), timeFrame: TimeFrame(windowSize: 123, to: 123), metrics: [AppDataMetricConfiguration(metric: "metric_example", granularity: 123, aggregation: "aggregation_example")], nameFilter: "nameFilter_example", applicationId: "applicationId_example", serviceId: "serviceId_example", endpointId: "endpointId_example", endpointTypes: ["endpointTypes_example"], excludeSynthetic: false) // GetEndpoints |  (optional)

// Get Endpoint metrics
ApplicationMetricsAPI.getEndpointsMetrics(getEndpoints: getEndpoints) { (response, error) in
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
 **getEndpoints** | [**GetEndpoints**](GetEndpoints.md) |  | [optional] 

### Return type

[**EndpointMetricResult**](EndpointMetricResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServicesMetrics**
```swift
    open class func getServicesMetrics(getServices: GetServices? = nil, completion: @escaping (_ data: ServiceMetricResult?, _ error: Error?) -> Void)
```

Get Service metrics

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let getServices = GetServices(pagination: Pagination(page: 123, pageSize: 123), order: Order(by: "by_example", direction: "direction_example"), timeFrame: TimeFrame(windowSize: 123, to: 123), metrics: [AppDataMetricConfiguration(metric: "metric_example", granularity: 123, aggregation: "aggregation_example")], nameFilter: "nameFilter_example", applicationId: "applicationId_example", serviceId: "serviceId_example", technologies: ["technologies_example"], contextScope: "contextScope_example") // GetServices |  (optional)

// Get Service metrics
ApplicationMetricsAPI.getServicesMetrics(getServices: getServices) { (response, error) in
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
 **getServices** | [**GetServices**](GetServices.md) |  | [optional] 

### Return type

[**ServiceMetricResult**](ServiceMetricResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

