//
// UserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class UserAPI {
    /**
     Delete role
     
     - parameter roleId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteRole(roleId: String, apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteRoleWithRequestBuilder(roleId: roleId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete role
     - DELETE /api/settings/roles/{roleId}
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter roleId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteRoleWithRequestBuilder(roleId: String) -> RequestBuilder<Void> {
        var path = "/api/settings/roles/{roleId}"
        let roleIdPreEscape = "\(APIHelper.mapValueToPathItem(roleId))"
        let roleIdPostEscape = roleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{roleId}", with: roleIdPostEscape, options: .literal, range: nil)
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = InstanaClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     All pending invitations
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInvitations(apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: [UserResult]?,_ error: Error?) -> Void)) {
        getInvitationsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     All pending invitations
     - GET /api/settings/users/invitations
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - returns: RequestBuilder<[UserResult]> 
     */
    open class func getInvitationsWithRequestBuilder() -> RequestBuilder<[UserResult]> {
        let path = "/api/settings/users/invitations"
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[UserResult]>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Role
     
     - parameter roleId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRole(roleId: String, apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: Role?,_ error: Error?) -> Void)) {
        getRoleWithRequestBuilder(roleId: roleId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Role
     - GET /api/settings/roles/{roleId}
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter roleId: (path)  
     - returns: RequestBuilder<Role> 
     */
    open class func getRoleWithRequestBuilder(roleId: String) -> RequestBuilder<Role> {
        var path = "/api/settings/roles/{roleId}"
        let roleIdPreEscape = "\(APIHelper.mapValueToPathItem(roleId))"
        let roleIdPostEscape = roleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{roleId}", with: roleIdPostEscape, options: .literal, range: nil)
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Role>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     All roles
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRoles(apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Role]?,_ error: Error?) -> Void)) {
        getRolesWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     All roles
     - GET /api/settings/roles
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - returns: RequestBuilder<[Role]> 
     */
    open class func getRolesWithRequestBuilder() -> RequestBuilder<[Role]> {
        let path = "/api/settings/roles"
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Role]>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     All users (without invitations)
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUsers(apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: [UserResult]?,_ error: Error?) -> Void)) {
        getUsersWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     All users (without invitations)
     - GET /api/settings/users
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - returns: RequestBuilder<[UserResult]> 
     */
    open class func getUsersWithRequestBuilder() -> RequestBuilder<[UserResult]> {
        let path = "/api/settings/users"
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[UserResult]>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     All users (incl. invitations)
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUsersIncludingInvitations(apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: UsersResult?,_ error: Error?) -> Void)) {
        getUsersIncludingInvitationsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     All users (incl. invitations)
     - GET /api/settings/users/overview
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - returns: RequestBuilder<UsersResult> 
     */
    open class func getUsersIncludingInvitationsWithRequestBuilder() -> RequestBuilder<UsersResult> {
        let path = "/api/settings/users/overview"
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<UsersResult>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create or update role
     
     - parameter roleId: (path)  
     - parameter role: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putRole(roleId: String, role: Role, apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: Role?,_ error: Error?) -> Void)) {
        putRoleWithRequestBuilder(roleId: roleId, role: role).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create or update role
     - PUT /api/settings/roles/{roleId}
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter roleId: (path)  
     - parameter role: (body)  
     - returns: RequestBuilder<Role> 
     */
    open class func putRoleWithRequestBuilder(roleId: String, role: Role) -> RequestBuilder<Role> {
        var path = "/api/settings/roles/{roleId}"
        let roleIdPreEscape = "\(APIHelper.mapValueToPathItem(roleId))"
        let roleIdPostEscape = roleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{roleId}", with: roleIdPostEscape, options: .literal, range: nil)
        let URLString = InstanaClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: role)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Role>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Remove user from tenant
     
     - parameter userId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeUserFromTenant(userId: String, apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        removeUserFromTenantWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove user from tenant
     - DELETE /api/settings/users/{userId}
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter userId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func removeUserFromTenantWithRequestBuilder(userId: String) -> RequestBuilder<Void> {
        var path = "/api/settings/users/{userId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = InstanaClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Revoke pending invitation
     
     - parameter email: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func revokePendingInvitations(email: String? = nil, apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        revokePendingInvitationsWithRequestBuilder(email: email).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Revoke pending invitation
     - DELETE /api/settings/users/invitations
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter email: (query)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func revokePendingInvitationsWithRequestBuilder(email: String? = nil) -> RequestBuilder<Void> {
        let path = "/api/settings/users/invitations"
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "email": email?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Void>.Type = InstanaClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Send user invitation
     
     - parameter email: (query)  (optional)
     - parameter roleId: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sendInvitation(email: String? = nil, roleId: String? = nil, apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        sendInvitationWithRequestBuilder(email: email, roleId: roleId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Send user invitation
     - POST /api/settings/users/invitations
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter email: (query)  (optional)
     - parameter roleId: (query)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func sendInvitationWithRequestBuilder(email: String? = nil, roleId: String? = nil) -> RequestBuilder<Void> {
        let path = "/api/settings/users/invitations"
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "email": email?.encodeToJSON(), 
            "roleId": roleId?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Void>.Type = InstanaClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Add user to role
     
     - parameter userId: (path)  
     - parameter roleId: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setRole(userId: String, roleId: String? = nil, apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        setRoleWithRequestBuilder(userId: userId, roleId: roleId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Add user to role
     - PUT /api/settings/users/{userId}/role
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter userId: (path)  
     - parameter roleId: (query)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func setRoleWithRequestBuilder(userId: String, roleId: String? = nil) -> RequestBuilder<Void> {
        var path = "/api/settings/users/{userId}/role"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "roleId": roleId?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Void>.Type = InstanaClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
