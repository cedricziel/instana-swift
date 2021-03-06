//
// ServiceMetricResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ServiceMetricResult: Codable { 


    public var items: [ServiceItem]
    public var page: Int?
    public var pageSize: Int?
    public var totalHits: Int?

    public init(items: [ServiceItem], page: Int?, pageSize: Int?, totalHits: Int?) {
        self.items = items
        self.page = page
        self.pageSize = pageSize
        self.totalHits = totalHits
    }

}
