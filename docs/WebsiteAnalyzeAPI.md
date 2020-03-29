# WebsiteAnalyzeAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBeaconGroups**](WebsiteAnalyzeAPI.md#getbeacongroups) | **POST** /api/website-monitoring/analyze/beacon-groups | Get grouped beacon metrics
[**getBeacons**](WebsiteAnalyzeAPI.md#getbeacons) | **POST** /api/website-monitoring/analyze/beacons | Get all beacons


# **getBeaconGroups**
```swift
    open class func getBeaconGroups(fillTimeSeries: Bool? = nil, getWebsiteBeaconGroups: GetWebsiteBeaconGroups? = nil, completion: @escaping (_ data: BeaconGroupsResult?, _ error: Error?) -> Void)
```

Get grouped beacon metrics

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let fillTimeSeries = true // Bool |  (optional)
let getWebsiteBeaconGroups = GetWebsiteBeaconGroups(pagination: CursorPagination(retrievalSize: 123, offset: 123, ingestionTime: 123), timeFrame: TimeFrame(windowSize: 123, to: 123), group: WebsiteBeaconTagGroup(groupbyTag: "groupbyTag_example", groupbyTagSecondLevelKey: "groupbyTagSecondLevelKey_example", groupbyTagEntity: "groupbyTagEntity_example"), order: Order(by: "by_example", direction: "direction_example"), type: "type_example", tagFilters: [TagFilter(name: "name_example", value: "value_example", _operator: "_operator_example", entity: "entity_example")], metrics: [WebsiteMonitoringMetricsConfiguration(metric: "metric_example", granularity: 123, aggregation: "aggregation_example")]) // GetWebsiteBeaconGroups |  (optional)

// Get grouped beacon metrics
WebsiteAnalyzeAPI.getBeaconGroups(fillTimeSeries: fillTimeSeries, getWebsiteBeaconGroups: getWebsiteBeaconGroups) { (response, error) in
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
 **getWebsiteBeaconGroups** | [**GetWebsiteBeaconGroups**](GetWebsiteBeaconGroups.md) |  | [optional] 

### Return type

[**BeaconGroupsResult**](BeaconGroupsResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBeacons**
```swift
    open class func getBeacons(getWebsiteBeacons: GetWebsiteBeacons? = nil, completion: @escaping (_ data: BeaconResult?, _ error: Error?) -> Void)
```

Get all beacons

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let getWebsiteBeacons = GetWebsiteBeacons(pagination: CursorPagination(retrievalSize: 123, offset: 123, ingestionTime: 123), timeFrame: TimeFrame(windowSize: 123, to: 123), type: "type_example", tagFilters: [TagFilter(name: "name_example", value: "value_example", _operator: "_operator_example", entity: "entity_example")]) // GetWebsiteBeacons |  (optional)

// Get all beacons
WebsiteAnalyzeAPI.getBeacons(getWebsiteBeacons: getWebsiteBeacons) { (response, error) in
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
 **getWebsiteBeacons** | [**GetWebsiteBeacons**](GetWebsiteBeacons.md) |  | [optional] 

### Return type

[**BeaconResult**](BeaconResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

