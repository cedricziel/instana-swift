//
// GetServices.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct GetServices: Codable { 


    public enum ContextScope: String, Codable, CaseIterable {
        case _none = "NONE"
        case upstream = "UPSTREAM"
        case downstream = "DOWNSTREAM"
    }
    public var pagination: Pagination?
    public var order: Order?
    public var timeFrame: TimeFrame?
    public var metrics: [AppDataMetricConfiguration]
    public var nameFilter: String?
    public var applicationId: String?
    public var serviceId: String?
    public var technologies: [String]?
    public var contextScope: ContextScope?

    public init(pagination: Pagination?, order: Order?, timeFrame: TimeFrame?, metrics: [AppDataMetricConfiguration], nameFilter: String?, applicationId: String?, serviceId: String?, technologies: [String]?, contextScope: ContextScope?) {
        self.pagination = pagination
        self.order = order
        self.timeFrame = timeFrame
        self.metrics = metrics
        self.nameFilter = nameFilter
        self.applicationId = applicationId
        self.serviceId = serviceId
        self.technologies = technologies
        self.contextScope = contextScope
    }

}
