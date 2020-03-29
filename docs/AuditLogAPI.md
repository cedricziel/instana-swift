# AuditLogAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuditLogs**](AuditLogAPI.md#getauditlogs) | **GET** /api/settings/auditlog | Audit log


# **getAuditLogs**
```swift
    open class func getAuditLogs(offset: Int? = nil, query: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: AuditLogResponse?, _ error: Error?) -> Void)
```

Audit log

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let offset = 987 // Int |  (optional)
let query = "query_example" // String |  (optional)
let pageSize = 987 // Int |  (optional)

// Audit log
AuditLogAPI.getAuditLogs(offset: offset, query: query, pageSize: pageSize) { (response, error) in
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
 **offset** | **Int** |  | [optional] 
 **query** | **String** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 

### Return type

[**AuditLogResponse**](AuditLogResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

