# UserAPI

All URIs are relative to *https://unit-tenant.instana.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteRole**](UserAPI.md#deleterole) | **DELETE** /api/settings/roles/{roleId} | Delete role
[**getInvitations**](UserAPI.md#getinvitations) | **GET** /api/settings/users/invitations | All pending invitations
[**getRole**](UserAPI.md#getrole) | **GET** /api/settings/roles/{roleId} | Role
[**getRoles**](UserAPI.md#getroles) | **GET** /api/settings/roles | All roles
[**getUsers**](UserAPI.md#getusers) | **GET** /api/settings/users | All users (without invitations)
[**getUsersIncludingInvitations**](UserAPI.md#getusersincludinginvitations) | **GET** /api/settings/users/overview | All users (incl. invitations)
[**putRole**](UserAPI.md#putrole) | **PUT** /api/settings/roles/{roleId} | Create or update role
[**removeUserFromTenant**](UserAPI.md#removeuserfromtenant) | **DELETE** /api/settings/users/{userId} | Remove user from tenant
[**revokePendingInvitations**](UserAPI.md#revokependinginvitations) | **DELETE** /api/settings/users/invitations | Revoke pending invitation
[**sendInvitation**](UserAPI.md#sendinvitation) | **POST** /api/settings/users/invitations | Send user invitation
[**setRole**](UserAPI.md#setrole) | **PUT** /api/settings/users/{userId}/role | Add user to role


# **deleteRole**
```swift
    open class func deleteRole(roleId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete role

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let roleId = "roleId_example" // String | 

// Delete role
UserAPI.deleteRole(roleId: roleId) { (response, error) in
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
 **roleId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvitations**
```swift
    open class func getInvitations(completion: @escaping (_ data: [UserResult]?, _ error: Error?) -> Void)
```

All pending invitations

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// All pending invitations
UserAPI.getInvitations() { (response, error) in
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

[**[UserResult]**](UserResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRole**
```swift
    open class func getRole(roleId: String, completion: @escaping (_ data: Role?, _ error: Error?) -> Void)
```

Role

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let roleId = "roleId_example" // String | 

// Role
UserAPI.getRole(roleId: roleId) { (response, error) in
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
 **roleId** | **String** |  | 

### Return type

[**Role**](Role.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoles**
```swift
    open class func getRoles(completion: @escaping (_ data: [Role]?, _ error: Error?) -> Void)
```

All roles

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// All roles
UserAPI.getRoles() { (response, error) in
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

[**[Role]**](Role.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
```swift
    open class func getUsers(completion: @escaping (_ data: [UserResult]?, _ error: Error?) -> Void)
```

All users (without invitations)

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// All users (without invitations)
UserAPI.getUsers() { (response, error) in
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

[**[UserResult]**](UserResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersIncludingInvitations**
```swift
    open class func getUsersIncludingInvitations(completion: @escaping (_ data: UsersResult?, _ error: Error?) -> Void)
```

All users (incl. invitations)

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient


// All users (incl. invitations)
UserAPI.getUsersIncludingInvitations() { (response, error) in
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

[**UsersResult**](UsersResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putRole**
```swift
    open class func putRole(roleId: String, role: Role, completion: @escaping (_ data: Role?, _ error: Error?) -> Void)
```

Create or update role

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let roleId = "roleId_example" // String | 
let role = Role(id: "id_example", name: "name_example", canConfigureServiceMapping: false, canConfigureEumApplications: false, canConfigureMobileAppMonitoring: false, canConfigureUsers: false, canInstallNewAgents: false, canSeeUsageInformation: false, canConfigureIntegrations: false, canSeeOnPremLicenseInformation: false, canConfigureRoles: false, canConfigureCustomAlerts: false, canConfigureApiTokens: false, canConfigureAgentRunMode: false, canViewAuditLog: false, canConfigureObjectives: false, canConfigureAgents: false, canConfigureAuthenticationMethods: false, canConfigureApplications: false, canConfigureTeams: false, restrictedAccess: false, canConfigureReleases: false, canConfigureLogManagement: false) // Role | 

// Create or update role
UserAPI.putRole(roleId: roleId, role: role) { (response, error) in
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
 **roleId** | **String** |  | 
 **role** | [**Role**](Role.md) |  | 

### Return type

[**Role**](Role.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserFromTenant**
```swift
    open class func removeUserFromTenant(userId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove user from tenant

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let userId = "userId_example" // String | 

// Remove user from tenant
UserAPI.removeUserFromTenant(userId: userId) { (response, error) in
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
 **userId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokePendingInvitations**
```swift
    open class func revokePendingInvitations(email: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Revoke pending invitation

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let email = "email_example" // String |  (optional)

// Revoke pending invitation
UserAPI.revokePendingInvitations(email: email) { (response, error) in
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
 **email** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendInvitation**
```swift
    open class func sendInvitation(email: String? = nil, roleId: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Send user invitation

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let email = "email_example" // String |  (optional)
let roleId = "roleId_example" // String |  (optional)

// Send user invitation
UserAPI.sendInvitation(email: email, roleId: roleId) { (response, error) in
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
 **email** | **String** |  | [optional] 
 **roleId** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setRole**
```swift
    open class func setRole(userId: String, roleId: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add user to role

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import InstanaClient

let userId = "userId_example" // String | 
let roleId = "roleId_example" // String |  (optional)

// Add user to role
UserAPI.setRole(userId: userId, roleId: roleId) { (response, error) in
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
 **userId** | **String** |  | 
 **roleId** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

