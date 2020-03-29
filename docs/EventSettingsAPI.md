# EventSettingsAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](EventSettingsAPI.md#create) | **POST** /api/events/settings/website-alert-configs | Create Website Alert Config
[**deleteAlert**](EventSettingsAPI.md#deletealert) | **DELETE** /api/events/settings/alerts/{id} | Delete alerting
[**deleteAlertingChannel**](EventSettingsAPI.md#deletealertingchannel) | **DELETE** /api/events/settings/alertingChannels/{id} | Delete alerting channel
[**deleteBuiltInEventSpecification**](EventSettingsAPI.md#deletebuiltineventspecification) | **DELETE** /api/events/settings/event-specifications/built-in/{eventSpecificationId} | Delete built-in event specification
[**deleteCustomEventSpecification**](EventSettingsAPI.md#deletecustomeventspecification) | **DELETE** /api/events/settings/event-specifications/custom/{eventSpecificationId} | Delete custom event specification
[**disableBuiltInEventSpecification**](EventSettingsAPI.md#disablebuiltineventspecification) | **POST** /api/events/settings/event-specifications/built-in/{eventSpecificationId}/disable | Disable built-in event specification
[**disableCustomEventSpecification**](EventSettingsAPI.md#disablecustomeventspecification) | **POST** /api/events/settings/event-specifications/custom/{eventSpecificationId}/disable | Disable custom event specification
[**enableBuiltInEventSpecification**](EventSettingsAPI.md#enablebuiltineventspecification) | **POST** /api/events/settings/event-specifications/built-in/{eventSpecificationId}/enable | Enable built-in event specification
[**enableCustomEventSpecification**](EventSettingsAPI.md#enablecustomeventspecification) | **POST** /api/events/settings/event-specifications/custom/{eventSpecificationId}/enable | Enable custom event specification
[**find**](EventSettingsAPI.md#find) | **GET** /api/events/settings/website-alert-configs/{id} | Get Website Alert Config
[**findAllActive**](EventSettingsAPI.md#findallactive) | **GET** /api/events/settings/website-alert-configs | All Website Alert Configs
[**findVersions**](EventSettingsAPI.md#findversions) | **GET** /api/events/settings/website-alert-configs/{id}/versions | Get versions of Website Alert Config
[**getAlert**](EventSettingsAPI.md#getalert) | **GET** /api/events/settings/alerts/{id} | Alerting
[**getAlertingChannel**](EventSettingsAPI.md#getalertingchannel) | **GET** /api/events/settings/alertingChannels/{id} | Alerting channel
[**getAlertingChannels**](EventSettingsAPI.md#getalertingchannels) | **GET** /api/events/settings/alertingChannels | All alerting channels
[**getAlertingConfigurationInfos**](EventSettingsAPI.md#getalertingconfigurationinfos) | **GET** /api/events/settings/alerts/infos | All alerting configuration info
[**getAlerts**](EventSettingsAPI.md#getalerts) | **GET** /api/events/settings/alerts | All Alerting
[**getBuiltInEventSpecification**](EventSettingsAPI.md#getbuiltineventspecification) | **GET** /api/events/settings/event-specifications/built-in/{eventSpecificationId} | Built-in event specifications
[**getBuiltInEventSpecifications**](EventSettingsAPI.md#getbuiltineventspecifications) | **GET** /api/events/settings/event-specifications/built-in | All built-in event specification
[**getCustomEventSpecification**](EventSettingsAPI.md#getcustomeventspecification) | **GET** /api/events/settings/event-specifications/custom/{eventSpecificationId} | Custom event specification
[**getCustomEventSpecifications**](EventSettingsAPI.md#getcustomeventspecifications) | **GET** /api/events/settings/event-specifications/custom | All custom event specifications
[**getEventSpecificationInfos**](EventSettingsAPI.md#geteventspecificationinfos) | **GET** /api/events/settings/event-specifications/infos | Summary of all built-in and custom event specifications
[**getEventSpecificationInfosByIds**](EventSettingsAPI.md#geteventspecificationinfosbyids) | **POST** /api/events/settings/event-specifications/infos | All built-in and custom event specifications
[**getSystemRules**](EventSettingsAPI.md#getsystemrules) | **GET** /api/events/settings/event-specifications/custom/systemRules | All system rules for custom event specifications
[**putAlert**](EventSettingsAPI.md#putalert) | **PUT** /api/events/settings/alerts/{id} | Update alerting
[**putAlertingChannel**](EventSettingsAPI.md#putalertingchannel) | **PUT** /api/events/settings/alertingChannels/{id} | Update alerting channel
[**putCustomEventSpecification**](EventSettingsAPI.md#putcustomeventspecification) | **PUT** /api/events/settings/event-specifications/custom/{eventSpecificationId} | Update custom event specification
[**sendTestAlerting**](EventSettingsAPI.md#sendtestalerting) | **PUT** /api/events/settings/alertingChannels/test | Test alerting channel
[**update**](EventSettingsAPI.md#update) | **POST** /api/events/settings/website-alert-configs/{id} | Update Website Alert Config


# **create**
```swift
    open class func create(websiteAlertConfig: WebsiteAlertConfig, completion: @escaping (_ data: [WebsiteAlertConfigWithMetadata]?, _ error: Error?) -> Void)
```

Create Website Alert Config

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let websiteAlertConfig = WebsiteAlertConfig(name: "name_example", description: "description_example", websiteId: "websiteId_example", severity: 123, triggering: false, tagFilters: [TagFilter(name: "name_example", value: "value_example", _operator: "_operator_example", entity: "entity_example")], rule: WebsiteAlertRule(alertType: "alertType_example", metricName: "metricName_example"), threshold: Threshold(type: "type_example", _operator: "_operator_example", lastUpdated: 123), alertChannelIds: ["alertChannelIds_example"], granularity: 123, timeThreshold: WebsiteTimeThreshold(type: "type_example", timeWindow: 123)) // WebsiteAlertConfig | 

// Create Website Alert Config
EventSettingsAPI.create(websiteAlertConfig: websiteAlertConfig) { (response, error) in
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
 **websiteAlertConfig** | [**WebsiteAlertConfig**](WebsiteAlertConfig.md) |  | 

### Return type

[**[WebsiteAlertConfigWithMetadata]**](WebsiteAlertConfigWithMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAlert**
```swift
    open class func deleteAlert(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete alerting

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 

// Delete alerting
EventSettingsAPI.deleteAlert(id: id) { (response, error) in
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAlertingChannel**
```swift
    open class func deleteAlertingChannel(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete alerting channel

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 

// Delete alerting channel
EventSettingsAPI.deleteAlertingChannel(id: id) { (response, error) in
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBuiltInEventSpecification**
```swift
    open class func deleteBuiltInEventSpecification(eventSpecificationId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete built-in event specification

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let eventSpecificationId = "eventSpecificationId_example" // String | 

// Delete built-in event specification
EventSettingsAPI.deleteBuiltInEventSpecification(eventSpecificationId: eventSpecificationId) { (response, error) in
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
 **eventSpecificationId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomEventSpecification**
```swift
    open class func deleteCustomEventSpecification(eventSpecificationId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete custom event specification

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let eventSpecificationId = "eventSpecificationId_example" // String | 

// Delete custom event specification
EventSettingsAPI.deleteCustomEventSpecification(eventSpecificationId: eventSpecificationId) { (response, error) in
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
 **eventSpecificationId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disableBuiltInEventSpecification**
```swift
    open class func disableBuiltInEventSpecification(eventSpecificationId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Disable built-in event specification

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let eventSpecificationId = "eventSpecificationId_example" // String | 

// Disable built-in event specification
EventSettingsAPI.disableBuiltInEventSpecification(eventSpecificationId: eventSpecificationId) { (response, error) in
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
 **eventSpecificationId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disableCustomEventSpecification**
```swift
    open class func disableCustomEventSpecification(eventSpecificationId: String, completion: @escaping (_ data: CustomEventSpecificationWithLastUpdated?, _ error: Error?) -> Void)
```

Disable custom event specification

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let eventSpecificationId = "eventSpecificationId_example" // String | 

// Disable custom event specification
EventSettingsAPI.disableCustomEventSpecification(eventSpecificationId: eventSpecificationId) { (response, error) in
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
 **eventSpecificationId** | **String** |  | 

### Return type

[**CustomEventSpecificationWithLastUpdated**](CustomEventSpecificationWithLastUpdated.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enableBuiltInEventSpecification**
```swift
    open class func enableBuiltInEventSpecification(eventSpecificationId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Enable built-in event specification

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let eventSpecificationId = "eventSpecificationId_example" // String | 

// Enable built-in event specification
EventSettingsAPI.enableBuiltInEventSpecification(eventSpecificationId: eventSpecificationId) { (response, error) in
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
 **eventSpecificationId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enableCustomEventSpecification**
```swift
    open class func enableCustomEventSpecification(eventSpecificationId: String, completion: @escaping (_ data: CustomEventSpecificationWithLastUpdated?, _ error: Error?) -> Void)
```

Enable custom event specification

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let eventSpecificationId = "eventSpecificationId_example" // String | 

// Enable custom event specification
EventSettingsAPI.enableCustomEventSpecification(eventSpecificationId: eventSpecificationId) { (response, error) in
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
 **eventSpecificationId** | **String** |  | 

### Return type

[**CustomEventSpecificationWithLastUpdated**](CustomEventSpecificationWithLastUpdated.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find**
```swift
    open class func find(id: String, validOn: Int64? = nil, completion: @escaping (_ data: [WebsiteAlertConfigWithMetadata]?, _ error: Error?) -> Void)
```

Get Website Alert Config

Find a Website Alert Config by ID. This will deliver deleted configs too.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 
let validOn = 987 // Int64 |  (optional)

// Get Website Alert Config
EventSettingsAPI.find(id: id, validOn: validOn) { (response, error) in
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
 **validOn** | **Int64** |  | [optional] 

### Return type

[**[WebsiteAlertConfigWithMetadata]**](WebsiteAlertConfigWithMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllActive**
```swift
    open class func findAllActive(websiteId: String? = nil, completion: @escaping (_ data: [WebsiteAlertConfigWithMetadata]?, _ error: Error?) -> Void)
```

All Website Alert Configs

Configs are sorted descending by their created date.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let websiteId = "websiteId_example" // String |  (optional)

// All Website Alert Configs
EventSettingsAPI.findAllActive(websiteId: websiteId) { (response, error) in
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
 **websiteId** | **String** |  | [optional] 

### Return type

[**[WebsiteAlertConfigWithMetadata]**](WebsiteAlertConfigWithMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findVersions**
```swift
    open class func findVersions(id: String, completion: @escaping (_ data: [ConfigVersion]?, _ error: Error?) -> Void)
```

Get versions of Website Alert Config

Find all versions of a Website Alert Config by ID. This will deliver deleted configs too. Configs are sorted descending by their created date.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 

// Get versions of Website Alert Config
EventSettingsAPI.findVersions(id: id) { (response, error) in
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

[**[ConfigVersion]**](ConfigVersion.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlert**
```swift
    open class func getAlert(id: String, completion: @escaping (_ data: AlertingConfigurationWithLastUpdated?, _ error: Error?) -> Void)
```

Alerting

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 

// Alerting
EventSettingsAPI.getAlert(id: id) { (response, error) in
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

[**AlertingConfigurationWithLastUpdated**](AlertingConfigurationWithLastUpdated.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlertingChannel**
```swift
    open class func getAlertingChannel(id: String, completion: @escaping (_ data: AbstractIntegration?, _ error: Error?) -> Void)
```

Alerting channel

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 

// Alerting channel
EventSettingsAPI.getAlertingChannel(id: id) { (response, error) in
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

[**AbstractIntegration**](AbstractIntegration.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlertingChannels**
```swift
    open class func getAlertingChannels(ids: [String]? = nil, completion: @escaping (_ data: [AbstractIntegration]?, _ error: Error?) -> Void)
```

All alerting channels

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let ids = ["inner_example"] // [String] |  (optional)

// All alerting channels
EventSettingsAPI.getAlertingChannels(ids: ids) { (response, error) in
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
 **ids** | [**[String]**](String.md) |  | [optional] 

### Return type

[**[AbstractIntegration]**](AbstractIntegration.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlertingConfigurationInfos**
```swift
    open class func getAlertingConfigurationInfos(integrationId: String? = nil, completion: @escaping (_ data: [ValidatedAlertingChannelInputInfo]?, _ error: Error?) -> Void)
```

All alerting configuration info

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let integrationId = "integrationId_example" // String |  (optional)

// All alerting configuration info
EventSettingsAPI.getAlertingConfigurationInfos(integrationId: integrationId) { (response, error) in
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
 **integrationId** | **String** |  | [optional] 

### Return type

[**[ValidatedAlertingChannelInputInfo]**](ValidatedAlertingChannelInputInfo.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlerts**
```swift
    open class func getAlerts(completion: @escaping (_ data: [ValidatedAlertingConfiguration]?, _ error: Error?) -> Void)
```

All Alerting

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// All Alerting
EventSettingsAPI.getAlerts() { (response, error) in
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

[**[ValidatedAlertingConfiguration]**](ValidatedAlertingConfiguration.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBuiltInEventSpecification**
```swift
    open class func getBuiltInEventSpecification(eventSpecificationId: String, completion: @escaping (_ data: BuiltInEventSpecification?, _ error: Error?) -> Void)
```

Built-in event specifications

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let eventSpecificationId = "eventSpecificationId_example" // String | 

// Built-in event specifications
EventSettingsAPI.getBuiltInEventSpecification(eventSpecificationId: eventSpecificationId) { (response, error) in
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
 **eventSpecificationId** | **String** |  | 

### Return type

[**BuiltInEventSpecification**](BuiltInEventSpecification.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBuiltInEventSpecifications**
```swift
    open class func getBuiltInEventSpecifications(ids: [String]? = nil, completion: @escaping (_ data: [BuiltInEventSpecificationWithLastUpdated]?, _ error: Error?) -> Void)
```

All built-in event specification

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let ids = ["inner_example"] // [String] |  (optional)

// All built-in event specification
EventSettingsAPI.getBuiltInEventSpecifications(ids: ids) { (response, error) in
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
 **ids** | [**[String]**](String.md) |  | [optional] 

### Return type

[**[BuiltInEventSpecificationWithLastUpdated]**](BuiltInEventSpecificationWithLastUpdated.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomEventSpecification**
```swift
    open class func getCustomEventSpecification(eventSpecificationId: String, completion: @escaping (_ data: CustomEventSpecificationWithLastUpdated?, _ error: Error?) -> Void)
```

Custom event specification

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let eventSpecificationId = "eventSpecificationId_example" // String | 

// Custom event specification
EventSettingsAPI.getCustomEventSpecification(eventSpecificationId: eventSpecificationId) { (response, error) in
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
 **eventSpecificationId** | **String** |  | 

### Return type

[**CustomEventSpecificationWithLastUpdated**](CustomEventSpecificationWithLastUpdated.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomEventSpecifications**
```swift
    open class func getCustomEventSpecifications(completion: @escaping (_ data: [CustomEventSpecificationWithLastUpdated]?, _ error: Error?) -> Void)
```

All custom event specifications

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// All custom event specifications
EventSettingsAPI.getCustomEventSpecifications() { (response, error) in
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

[**[CustomEventSpecificationWithLastUpdated]**](CustomEventSpecificationWithLastUpdated.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventSpecificationInfos**
```swift
    open class func getEventSpecificationInfos(completion: @escaping (_ data: [EventSpecificationInfo]?, _ error: Error?) -> Void)
```

Summary of all built-in and custom event specifications

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// Summary of all built-in and custom event specifications
EventSettingsAPI.getEventSpecificationInfos() { (response, error) in
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

[**[EventSpecificationInfo]**](EventSpecificationInfo.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventSpecificationInfosByIds**
```swift
    open class func getEventSpecificationInfosByIds(requestBody: [String], completion: @escaping (_ data: [EventSpecificationInfo]?, _ error: Error?) -> Void)
```

All built-in and custom event specifications

Summary of all built-in and custom event specifications by IDs

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let requestBody = ["property_example"] // [String] | 

// All built-in and custom event specifications
EventSettingsAPI.getEventSpecificationInfosByIds(requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String]**](String.md) |  | 

### Return type

[**[EventSpecificationInfo]**](EventSpecificationInfo.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSystemRules**
```swift
    open class func getSystemRules(completion: @escaping (_ data: [SystemRuleLabel]?, _ error: Error?) -> Void)
```

All system rules for custom event specifications

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// All system rules for custom event specifications
EventSettingsAPI.getSystemRules() { (response, error) in
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

[**[SystemRuleLabel]**](SystemRuleLabel.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAlert**
```swift
    open class func putAlert(id: String, alertingConfiguration: AlertingConfiguration, completion: @escaping (_ data: AlertingConfigurationWithLastUpdated?, _ error: Error?) -> Void)
```

Update alerting

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 
let alertingConfiguration = AlertingConfiguration(id: "id_example", alertName: "alertName_example", muteUntil: 123, integrationIds: ["integrationIds_example"], eventFilteringConfiguration: EventFilteringConfiguration(query: "query_example", ruleIds: ["ruleIds_example"], eventTypes: ["eventTypes_example"]), customPayload: "customPayload_example") // AlertingConfiguration | 

// Update alerting
EventSettingsAPI.putAlert(id: id, alertingConfiguration: alertingConfiguration) { (response, error) in
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
 **alertingConfiguration** | [**AlertingConfiguration**](AlertingConfiguration.md) |  | 

### Return type

[**AlertingConfigurationWithLastUpdated**](AlertingConfigurationWithLastUpdated.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAlertingChannel**
```swift
    open class func putAlertingChannel(id: String, abstractIntegration: AbstractIntegration, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update alerting channel

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 
let abstractIntegration = AbstractIntegration(id: "id_example", kind: "kind_example", name: "name_example") // AbstractIntegration | 

// Update alerting channel
EventSettingsAPI.putAlertingChannel(id: id, abstractIntegration: abstractIntegration) { (response, error) in
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
 **abstractIntegration** | [**AbstractIntegration**](AbstractIntegration.md) |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putCustomEventSpecification**
```swift
    open class func putCustomEventSpecification(eventSpecificationId: String, customEventSpecification: CustomEventSpecification, completion: @escaping (_ data: CustomEventSpecificationWithLastUpdated?, _ error: Error?) -> Void)
```

Update custom event specification

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let eventSpecificationId = "eventSpecificationId_example" // String | 
let customEventSpecification = CustomEventSpecification(id: "id_example", name: "name_example", entityType: "entityType_example", query: "query_example", triggering: false, description: "description_example", expirationTime: 123, enabled: false, rules: [AbstractRule(ruleType: "ruleType_example", severity: 123)]) // CustomEventSpecification | 

// Update custom event specification
EventSettingsAPI.putCustomEventSpecification(eventSpecificationId: eventSpecificationId, customEventSpecification: customEventSpecification) { (response, error) in
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
 **eventSpecificationId** | **String** |  | 
 **customEventSpecification** | [**CustomEventSpecification**](CustomEventSpecification.md) |  | 

### Return type

[**CustomEventSpecificationWithLastUpdated**](CustomEventSpecificationWithLastUpdated.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTestAlerting**
```swift
    open class func sendTestAlerting(abstractIntegration: AbstractIntegration, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Test alerting channel

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let abstractIntegration = AbstractIntegration(id: "id_example", kind: "kind_example", name: "name_example") // AbstractIntegration | 

// Test alerting channel
EventSettingsAPI.sendTestAlerting(abstractIntegration: abstractIntegration) { (response, error) in
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
 **abstractIntegration** | [**AbstractIntegration**](AbstractIntegration.md) |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```swift
    open class func update(id: String, websiteAlertConfig: WebsiteAlertConfig, completion: @escaping (_ data: [WebsiteAlertConfigWithMetadata]?, _ error: Error?) -> Void)
```

Update Website Alert Config

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let id = "id_example" // String | 
let websiteAlertConfig = WebsiteAlertConfig(name: "name_example", description: "description_example", websiteId: "websiteId_example", severity: 123, triggering: false, tagFilters: [TagFilter(name: "name_example", value: "value_example", _operator: "_operator_example", entity: "entity_example")], rule: WebsiteAlertRule(alertType: "alertType_example", metricName: "metricName_example"), threshold: Threshold(type: "type_example", _operator: "_operator_example", lastUpdated: 123), alertChannelIds: ["alertChannelIds_example"], granularity: 123, timeThreshold: WebsiteTimeThreshold(type: "type_example", timeWindow: 123)) // WebsiteAlertConfig | 

// Update Website Alert Config
EventSettingsAPI.update(id: id, websiteAlertConfig: websiteAlertConfig) { (response, error) in
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
 **websiteAlertConfig** | [**WebsiteAlertConfig**](WebsiteAlertConfig.md) |  | 

### Return type

[**[WebsiteAlertConfigWithMetadata]**](WebsiteAlertConfigWithMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

