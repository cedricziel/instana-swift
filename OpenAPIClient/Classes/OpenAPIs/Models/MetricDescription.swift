//
// MetricDescription.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct MetricDescription: Codable { 


    public var metricId: String?
    public var label: String?
    public var formatter: String?
    public var description: String?
    public var aggregations: [String]?

    public init(metricId: String?, label: String?, formatter: String?, description: String?, aggregations: [String]?) {
        self.metricId = metricId
        self.label = label
        self.formatter = formatter
        self.description = description
        self.aggregations = aggregations
    }

}
