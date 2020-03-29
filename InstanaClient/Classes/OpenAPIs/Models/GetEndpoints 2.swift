//
// GetEndpoints.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct GetEndpoints: Codable { 


    public enum EndpointTypes: String, Codable, CaseIterable {
        case undefined = "UNDEFINED"
        case rpc = "RPC"
        case event = "EVENT"
        case graphql = "GRAPHQL"
        case batch = "BATCH"
        case shell = "SHELL"
        case http = "HTTP"
        case sdk = "SDK"
        case _internal = "INTERNAL"
        case database = "DATABASE"
        case messaging = "MESSAGING"
        case page = "PAGE"
        case pageResource = "PAGE_RESOURCE"
    }
    public var pagination: Pagination?
    public var order: Order?
    public var timeFrame: TimeFrame?
    public var metrics: [AppDataMetricConfiguration]
    public var nameFilter: String?
    public var applicationId: String?
    public var serviceId: String?
    public var endpointId: String?
    public var endpointTypes: [EndpointTypes]?
    public var excludeSynthetic: Bool?

    public init(pagination: Pagination?, order: Order?, timeFrame: TimeFrame?, metrics: [AppDataMetricConfiguration], nameFilter: String?, applicationId: String?, serviceId: String?, endpointId: String?, endpointTypes: [EndpointTypes]?, excludeSynthetic: Bool?) {
        self.pagination = pagination
        self.order = order
        self.timeFrame = timeFrame
        self.metrics = metrics
        self.nameFilter = nameFilter
        self.applicationId = applicationId
        self.serviceId = serviceId
        self.endpointId = endpointId
        self.endpointTypes = endpointTypes
        self.excludeSynthetic = excludeSynthetic
    }

}
