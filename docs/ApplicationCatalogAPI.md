# ApplicationCatalogAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApplicationCatalogMetrics**](ApplicationCatalogAPI.md#getapplicationcatalogmetrics) | **GET** /api/application-monitoring/catalog/metrics | Get Metric catalog
[**getApplicationCatalogTags**](ApplicationCatalogAPI.md#getapplicationcatalogtags) | **GET** /api/application-monitoring/catalog/tags | Get filter tag catalog


# **getApplicationCatalogMetrics**
```swift
    open class func getApplicationCatalogMetrics(completion: @escaping (_ data: [MetricDescription]?, _ error: Error?) -> Void)
```

Get Metric catalog

This endpoint retrieves all available metric definitions for application monitoring. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// Get Metric catalog
ApplicationCatalogAPI.getApplicationCatalogMetrics() { (response, error) in
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

[**[MetricDescription]**](MetricDescription.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApplicationCatalogTags**
```swift
    open class func getApplicationCatalogTags(completion: @escaping (_ data: [Tag]?, _ error: Error?) -> Void)
```

Get filter tag catalog

This endpoint retrieves all available tags for your monitored system.  These tags can be used to group metric results. ``` \"group\": {   \"groupbyTag\": \"service.name\" } ```  These tags can be used to filter metric results. ``` \"tagFilters\": [{  \"name\": \"application.name\",  \"operator\": \"EQUALS\",  \"value\": \"example\" }] ``` 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// Get filter tag catalog
ApplicationCatalogAPI.getApplicationCatalogTags() { (response, error) in
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

