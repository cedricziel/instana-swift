//
// ViolationsInPeriodWebsiteTimeThreshold.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ViolationsInPeriodWebsiteTimeThreshold: Codable { 


    public var violations: Int?
    public var type: String
    public var timeWindow: Int64?

    public init(violations: Int?, type: String, timeWindow: Int64?) {
        self.violations = violations
        self.type = type
        self.timeWindow = timeWindow
    }

}
