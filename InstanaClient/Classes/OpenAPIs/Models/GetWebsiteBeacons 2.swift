//
// GetWebsiteBeacons.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct GetWebsiteBeacons: Codable { 


    public enum ModelType: String, Codable, CaseIterable {
        case pageload = "PAGELOAD"
        case resourceload = "RESOURCELOAD"
        case httprequest = "HTTPREQUEST"
        case error = "ERROR"
    }
    public var pagination: CursorPagination?
    public var timeFrame: TimeFrame?
    public var type: ModelType
    public var tagFilters: [TagFilter]?

    public init(pagination: CursorPagination?, timeFrame: TimeFrame?, type: ModelType, tagFilters: [TagFilter]?) {
        self.pagination = pagination
        self.timeFrame = timeFrame
        self.type = type
        self.tagFilters = tagFilters
    }

}
