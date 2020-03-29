//
// GetTraces.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct GetTraces: Codable { 


    public var pagination: CursorPagination?
    public var timeFrame: TimeFrame?
    public var tagFilters: [TagFilter]?

    public init(pagination: CursorPagination?, timeFrame: TimeFrame?, tagFilters: [TagFilter]?) {
        self.pagination = pagination
        self.timeFrame = timeFrame
        self.tagFilters = tagFilters
    }

}