//
// WebsiteTimeThreshold.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct WebsiteTimeThreshold: Codable { 


    public var type: String
    public var timeWindow: Int64?

    public init(type: String, timeWindow: Int64?) {
        self.type = type
        self.timeWindow = timeWindow
    }

}