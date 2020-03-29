# WebsiteCatalogAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWebsiteCatalogMetrics**](WebsiteCatalogAPI.md#getwebsitecatalogmetrics) | **GET** /api/website-monitoring/catalog/metrics | Metric catalog
[**getWebsiteCatalogTags**](WebsiteCatalogAPI.md#getwebsitecatalogtags) | **GET** /api/website-monitoring/catalog/tags | Filter tag catalog


# **getWebsiteCatalogMetrics**
```swift
    open class func getWebsiteCatalogMetrics(completion: @escaping (_ data: [WebsiteMonitoringMetricDescription]?, _ error: Error?) -> Void)
```

Metric catalog

This endpoint retrieves all available metric definitions for website monitoring. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// Metric catalog
WebsiteCatalogAPI.getWebsiteCatalogMetrics() { (response, error) in
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

[**[WebsiteMonitoringMetricDescription]**](WebsiteMonitoringMetricDescription.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebsiteCatalogTags**
```swift
    open class func getWebsiteCatalogTags(completion: @escaping (_ data: [Tag]?, _ error: Error?) -> Void)
```

Filter tag catalog

This endpoint retrieves all available tags for your monitored system.  These tags can be used to group metric results. ``` \"group\": {   \"groupbyTag\": \"beacon.page.name\" } ```  These tags can be used to filter metric results. ``` \"tagFilters\": [{  \"name\": \"beacon.website.name\",  \"operator\": \"EQUALS\",  \"value\": \"example\" }] ``` 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// Filter tag catalog
WebsiteCatalogAPI.getWebsiteCatalogTags() { (response, error) in
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

[**[Tag]**](Tag.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

