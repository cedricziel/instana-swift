//
// AuditLogAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class AuditLogAPI {
    /**
     Audit log
     
     - parameter offset: (query)  (optional)
     - parameter query: (query)  (optional)
     - parameter pageSize: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAuditLogs(offset: Int? = nil, query: String? = nil, pageSize: Int? = nil, apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: AuditLogResponse?,_ error: Error?) -> Void)) {
        getAuditLogsWithRequestBuilder(offset: offset, query: query, pageSize: pageSize).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Audit log
     - GET /api/settings/auditlog
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter offset: (query)  (optional)
     - parameter query: (query)  (optional)
     - parameter pageSize: (query)  (optional)
     - returns: RequestBuilder<AuditLogResponse> 
     */
    open class func getAuditLogsWithRequestBuilder(offset: Int? = nil, query: String? = nil, pageSize: Int? = nil) -> RequestBuilder<AuditLogResponse> {
        let path = "/api/settings/auditlog"
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "offset": offset?.encodeToJSON(), 
            "query": query?.encodeToJSON(), 
            "pageSize": pageSize?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<AuditLogResponse>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
