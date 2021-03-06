//
// ApplicationCatalogAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class ApplicationCatalogAPI {
    /**
     Get Metric catalog
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getApplicationCatalogMetrics(apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: [MetricDescription]?,_ error: Error?) -> Void)) {
        getApplicationCatalogMetricsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Metric catalog
     - GET /api/application-monitoring/catalog/metrics
     - This endpoint retrieves all available metric definitions for application monitoring. 
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - returns: RequestBuilder<[MetricDescription]> 
     */
    open class func getApplicationCatalogMetricsWithRequestBuilder() -> RequestBuilder<[MetricDescription]> {
        let path = "/api/application-monitoring/catalog/metrics"
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[MetricDescription]>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get filter tag catalog
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getApplicationCatalogTags(apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Tag]?,_ error: Error?) -> Void)) {
        getApplicationCatalogTagsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get filter tag catalog
     - GET /api/application-monitoring/catalog/tags
     - This endpoint retrieves all available tags for your monitored system.  These tags can be used to group metric results. ``` \"group\": {   \"groupbyTag\": \"service.name\" } ```  These tags can be used to filter metric results. ``` \"tagFilters\": [{  \"name\": \"application.name\",  \"operator\": \"EQUALS\",  \"value\": \"example\" }] ``` 
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - returns: RequestBuilder<[Tag]> 
     */
    open class func getApplicationCatalogTagsWithRequestBuilder() -> RequestBuilder<[Tag]> {
        let path = "/api/application-monitoring/catalog/tags"
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Tag]>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
