//
// InfrastructureMetricsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class InfrastructureMetricsAPI {
    /**
     Get infrastructure metrics
     
     - parameter context: (query)  (optional)
     - parameter offline: (query)  (optional)
     - parameter getCombinedMetrics: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInfrastructureMetrics(context: Bool? = nil, offline: Bool? = nil, getCombinedMetrics: GetCombinedMetrics? = nil, apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: InfrastructureMetricResult?,_ error: Error?) -> Void)) {
        getInfrastructureMetricsWithRequestBuilder(context: context, offline: offline, getCombinedMetrics: getCombinedMetrics).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get infrastructure metrics
     - POST /api/infrastructure-monitoring/metrics
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter context: (query)  (optional)
     - parameter offline: (query)  (optional)
     - parameter getCombinedMetrics: (body)  (optional)
     - returns: RequestBuilder<InfrastructureMetricResult> 
     */
    open class func getInfrastructureMetricsWithRequestBuilder(context: Bool? = nil, offline: Bool? = nil, getCombinedMetrics: GetCombinedMetrics? = nil) -> RequestBuilder<InfrastructureMetricResult> {
        let path = "/api/infrastructure-monitoring/metrics"
        let URLString = InstanaClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: getCombinedMetrics)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "context": context?.encodeToJSON(), 
            "offline": offline?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<InfrastructureMetricResult>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get snapshot details
     
     - parameter id: (path)  
     - parameter to: (query)  (optional)
     - parameter windowSize: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSnapshot(id: String, to: Int64? = nil, windowSize: Int64? = nil, apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: SnapshotItem?,_ error: Error?) -> Void)) {
        getSnapshotWithRequestBuilder(id: id, to: to, windowSize: windowSize).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get snapshot details
     - GET /api/infrastructure-monitoring/snapshots/{id}
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter id: (path)  
     - parameter to: (query)  (optional)
     - parameter windowSize: (query)  (optional)
     - returns: RequestBuilder<SnapshotItem> 
     */
    open class func getSnapshotWithRequestBuilder(id: String, to: Int64? = nil, windowSize: Int64? = nil) -> RequestBuilder<SnapshotItem> {
        var path = "/api/infrastructure-monitoring/snapshots/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "to": to?.encodeToJSON(), 
            "windowSize": windowSize?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<SnapshotItem>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Search snapshots
     
     - parameter query: (query)  (optional)
     - parameter to: (query)  (optional)
     - parameter windowSize: (query)  (optional)
     - parameter size: (query)  (optional)
     - parameter plugin: (query)  (optional)
     - parameter offline: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSnapshots(query: String? = nil, to: Int64? = nil, windowSize: Int64? = nil, size: Int? = nil, plugin: String? = nil, offline: Bool? = nil, apiResponseQueue: DispatchQueue = InstanaClientAPI.apiResponseQueue, completion: @escaping ((_ data: SnapshotResult?,_ error: Error?) -> Void)) {
        getSnapshotsWithRequestBuilder(query: query, to: to, windowSize: windowSize, size: size, plugin: plugin, offline: offline).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Search snapshots
     - GET /api/infrastructure-monitoring/snapshots
     - These APIs can be used to retrieve information about hosts, processes, JVMs and other entities that we are calling snapshots. A snapshot represents static information about an entity as it was at a specific point in time. To clarify:  **Static information** is any information which is seldom changing, e.g. process IDs, host FQDNs or a list of host hard disks. The counterpart to static information are metrics which have a much higher change rate, e.g. host CPU usage or JVM garbage collection activity. Snapshots only contain static information.  - Snapshots are **versioned** and represent an entity's state for a specific point in time. While snapshots only contain static information, even that information may change. For example you may add another hard disk to a server. For such a change, a new snapshot would be created.  
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter query: (query)  (optional)
     - parameter to: (query)  (optional)
     - parameter windowSize: (query)  (optional)
     - parameter size: (query)  (optional)
     - parameter plugin: (query)  (optional)
     - parameter offline: (query)  (optional)
     - returns: RequestBuilder<SnapshotResult> 
     */
    open class func getSnapshotsWithRequestBuilder(query: String? = nil, to: Int64? = nil, windowSize: Int64? = nil, size: Int? = nil, plugin: String? = nil, offline: Bool? = nil) -> RequestBuilder<SnapshotResult> {
        let path = "/api/infrastructure-monitoring/snapshots"
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "query": query?.encodeToJSON(), 
            "to": to?.encodeToJSON(), 
            "windowSize": windowSize?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "plugin": plugin?.encodeToJSON(), 
            "offline": offline?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<SnapshotResult>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
