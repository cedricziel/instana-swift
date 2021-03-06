//
// AppDataMetricConfiguration.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct AppDataMetricConfiguration: Codable { 


    public enum Aggregation: String, Codable, CaseIterable {
        case sum = "SUM"
        case mean = "MEAN"
        case max = "MAX"
        case min = "MIN"
        case p25 = "P25"
        case p50 = "P50"
        case p75 = "P75"
        case p90 = "P90"
        case p95 = "P95"
        case p98 = "P98"
        case p99 = "P99"
        case distinctCount = "DISTINCT_COUNT"
    }
    public var metric: String?
    public var granularity: Int?
    public var aggregation: Aggregation

    public init(metric: String?, granularity: Int?, aggregation: Aggregation) {
        self.metric = metric
        self.granularity = granularity
        self.aggregation = aggregation
    }

}
