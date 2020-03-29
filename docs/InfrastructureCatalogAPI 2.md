# InfrastructureCatalogAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInfrastructureCatalogMetrics**](InfrastructureCatalogAPI.md#getinfrastructurecatalogmetrics) | **GET** /api/infrastructure-monitoring/catalog/metrics/{plugin} | Get metric catalog
[**getInfrastructureCatalogPlugins**](InfrastructureCatalogAPI.md#getinfrastructurecatalogplugins) | **GET** /api/infrastructure-monitoring/catalog/plugins | Get plugin catalog
[**getInfrastructureCatalogSearchFields**](InfrastructureCatalogAPI.md#getinfrastructurecatalogsearchfields) | **GET** /api/infrastructure-monitoring/catalog/search | get search field catalog


# **getInfrastructureCatalogMetrics**
```swift
    open class func getInfrastructureCatalogMetrics(plugin: String, filter: String? = nil, completion: @escaping (_ data: [MetricInstance]?, _ error: Error?) -> Void)
```

Get metric catalog

This endpoint retrieves all available metric definitions of the requested plugin.  ### Path Parameters:  **plugin** The plugin id from [available plugins](#operation/getInfrastructureCatalogPlugins)  ### Optional Parameters:  **filter** You can restrict the returned metric definitions by passing a filter.  * `custom` to retrieve custom metric definitions only. * `builtin` to retrieve built-in metric definitions only. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let plugin = "plugin_example" // String | 
let filter = "filter_example" // String |  (optional)

// Get metric catalog
InfrastructureCatalogAPI.getInfrastructureCatalogMetrics(plugin: plugin, filter: filter) { (response, error) in
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
 **plugin** | **String** |  | 
 **filter** | **String** |  | [optional] 

### Return type

[**[MetricInstance]**](MetricInstance.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInfrastructureCatalogPlugins**
```swift
    open class func getInfrastructureCatalogPlugins(completion: @escaping (_ data: [PluginResult]?, _ error: Error?) -> Void)
```

Get plugin catalog

This endpoint retrieves all available plugin ids for your monitored system. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// Get plugin catalog
InfrastructureCatalogAPI.getInfrastructureCatalogPlugins() { (response, error) in
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

[**[PluginResult]**](PluginResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInfrastructureCatalogSearchFields**
```swift
    open class func getInfrastructureCatalogSearchFields(completion: @escaping (_ data: [SearchFieldResult]?, _ error: Error?) -> Void)
```

get search field catalog

This endpoint retrieves all available search keywords for dynamic focus queries.  These search fields can be accessed via lucene queries. Each field belongs to a context, e.g. to entity, trace or event data. Some fields contain a set of possible fixed values, in this case a deviant value is invalid.  ``` ?query={keyword}:{value} ``` 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// get search field catalog
InfrastructureCatalogAPI.getInfrastructureCatalogSearchFields() { (response, error) in
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

[**[SearchFieldResult]**](SearchFieldResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

