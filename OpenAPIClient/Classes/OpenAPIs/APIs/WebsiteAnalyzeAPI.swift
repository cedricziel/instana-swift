//
// WebsiteAnalyzeAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class WebsiteAnalyzeAPI {
    /**
     Get grouped beacon metrics
     
     - parameter fillTimeSeries: (query)  (optional)
     - parameter getWebsiteBeaconGroups: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBeaconGroups(fillTimeSeries: Bool? = nil, getWebsiteBeaconGroups: GetWebsiteBeaconGroups? = nil, completion: @escaping ((_ data: BeaconGroupsResult?,_ error: Error?) -> Void)) {
        getBeaconGroupsWithRequestBuilder(fillTimeSeries: fillTimeSeries, getWebsiteBeaconGroups: getWebsiteBeaconGroups).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get grouped beacon metrics
     - POST /api/website-monitoring/analyze/beacon-groups
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter fillTimeSeries: (query)  (optional)
     - parameter getWebsiteBeaconGroups: (body)  (optional)
     - returns: RequestBuilder<BeaconGroupsResult> 
     */
    open class func getBeaconGroupsWithRequestBuilder(fillTimeSeries: Bool? = nil, getWebsiteBeaconGroups: GetWebsiteBeaconGroups? = nil) -> RequestBuilder<BeaconGroupsResult> {
        let path = "/api/website-monitoring/analyze/beacon-groups"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: getWebsiteBeaconGroups)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "fillTimeSeries": fillTimeSeries?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<BeaconGroupsResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get all beacons
     
     - parameter getWebsiteBeacons: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBeacons(getWebsiteBeacons: GetWebsiteBeacons? = nil, completion: @escaping ((_ data: BeaconResult?,_ error: Error?) -> Void)) {
        getBeaconsWithRequestBuilder(getWebsiteBeacons: getWebsiteBeacons).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get all beacons
     - POST /api/website-monitoring/analyze/beacons
     - API Key:
       - type: apiKey authorization 
       - name: ApiKeyAuth
     - parameter getWebsiteBeacons: (body)  (optional)
     - returns: RequestBuilder<BeaconResult> 
     */
    open class func getBeaconsWithRequestBuilder(getWebsiteBeacons: GetWebsiteBeacons? = nil) -> RequestBuilder<BeaconResult> {
        let path = "/api/website-monitoring/analyze/beacons"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: getWebsiteBeacons)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<BeaconResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}