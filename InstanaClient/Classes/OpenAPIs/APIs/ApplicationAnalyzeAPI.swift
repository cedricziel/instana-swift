//
// ApplicationAnalyzeAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class ApplicationAnalyzeAPI {
    /**
     Get grouped call metrics
     
     - parameter fillTimeSeries: (query)  (optional)
     - parameter getCallGroups: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCallGroup(fillTimeSeries: Bool? = nil, getCallGroups: GetCallGroups? = nil, completion: @escaping ((_ data: CallGroupsResult?,_ error: Error?) -> Void)) {
        getCallGroupWithRequestBuilder(fillTimeSeries: fillTimeSeries, getCallGroups: getCallGroups).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get grouped call metrics
     - POST /api/application-monitoring/analyze/call-groups
     - This endpoint retrieves the metrics for calls.    **Manditory Paramters:**    **Optional Paramters:**    **Defaults:**    **Limits:**    **Tips:**  
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter fillTimeSeries: (query)  (optional)
     - parameter getCallGroups: (body)  (optional)
     - returns: RequestBuilder<CallGroupsResult> 
     */
    open class func getCallGroupWithRequestBuilder(fillTimeSeries: Bool? = nil, getCallGroups: GetCallGroups? = nil) -> RequestBuilder<CallGroupsResult> {
        let path = "/api/application-monitoring/analyze/call-groups"
        let URLString = InstanaClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: getCallGroups)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "fillTimeSeries": fillTimeSeries?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<CallGroupsResult>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get trace detail
     
     - parameter id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTrace(id: String, completion: @escaping ((_ data: FullTrace?,_ error: Error?) -> Void)) {
        getTraceWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get trace detail
     - GET /api/application-monitoring/analyze/traces/{id}
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter id: (path)  
     - returns: RequestBuilder<FullTrace> 
     */
    open class func getTraceWithRequestBuilder(id: String) -> RequestBuilder<FullTrace> {
        var path = "/api/application-monitoring/analyze/traces/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = InstanaClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<FullTrace>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get grouped trace metrics
     
     - parameter fillTimeSeries: (query)  (optional)
     - parameter getTraceGroups: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTraceGroups(fillTimeSeries: Bool? = nil, getTraceGroups: GetTraceGroups? = nil, completion: @escaping ((_ data: TraceGroupsResult?,_ error: Error?) -> Void)) {
        getTraceGroupsWithRequestBuilder(fillTimeSeries: fillTimeSeries, getTraceGroups: getTraceGroups).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get grouped trace metrics
     - POST /api/application-monitoring/analyze/trace-groups
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter fillTimeSeries: (query)  (optional)
     - parameter getTraceGroups: (body)  (optional)
     - returns: RequestBuilder<TraceGroupsResult> 
     */
    open class func getTraceGroupsWithRequestBuilder(fillTimeSeries: Bool? = nil, getTraceGroups: GetTraceGroups? = nil) -> RequestBuilder<TraceGroupsResult> {
        let path = "/api/application-monitoring/analyze/trace-groups"
        let URLString = InstanaClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: getTraceGroups)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "fillTimeSeries": fillTimeSeries?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<TraceGroupsResult>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get all traces
     
     - parameter getTraces: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTraces(getTraces: GetTraces? = nil, completion: @escaping ((_ data: TraceResult?,_ error: Error?) -> Void)) {
        getTracesWithRequestBuilder(getTraces: getTraces).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get all traces
     - POST /api/application-monitoring/analyze/traces
     - This endpoint retrieves the metrics for traces.    **Manditory Paramters:**    **Optional Paramters:**    **Defaults:**    **Limits:**    **Tips:**  
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter getTraces: (body)  (optional)
     - returns: RequestBuilder<TraceResult> 
     */
    open class func getTracesWithRequestBuilder(getTraces: GetTraces? = nil) -> RequestBuilder<TraceResult> {
        let path = "/api/application-monitoring/analyze/traces"
        let URLString = InstanaClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: getTraces)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TraceResult>.Type = InstanaClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
