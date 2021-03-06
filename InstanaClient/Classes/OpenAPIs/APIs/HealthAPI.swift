//
// HealthAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class HealthAPI {
    /**
     Basic health traffic light
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getHealthState(apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: HealthState?,_ error: Error?) -> Void)) {
        getHealthStateWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Basic health traffic light
     - GET /api/instana/health
     - The returned JSON object will provide a health property which contains a simple traffic light (GREEN/YELLO/RED). For any non-Green-state a list  of reasons will be provided in the messages array.  Possible messages: * No data being processed * No data arriving from agents 
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - returns: RequestBuilder<HealthState> 
     */
    open class func getHealthStateWithRequestBuilder() -> RequestBuilder<HealthState> {
        let path = "/api/instana/health"
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<HealthState>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     API version information
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVersion(apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: InstanaVersionInfo?,_ error: Error?) -> Void)) {
        getVersionWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     API version information
     - GET /api/instana/version
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - returns: RequestBuilder<InstanaVersionInfo> 
     */
    open class func getVersionWithRequestBuilder() -> RequestBuilder<InstanaVersionInfo> {
        let path = "/api/instana/version"
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<InstanaVersionInfo>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
