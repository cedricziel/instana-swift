//
// MaintenanceConfigWithLastUpdated.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct MaintenanceConfigWithLastUpdated: Codable { 


    public var id: String?
    public var name: String?
    public var query: String
    public var windows: [MaintenanceWindow]?
    public var lastUpdated: Int64?

    public init(id: String?, name: String?, query: String, windows: [MaintenanceWindow]?, lastUpdated: Int64?) {
        self.id = id
        self.name = name
        self.query = query
        self.windows = windows
        self.lastUpdated = lastUpdated
    }

}
