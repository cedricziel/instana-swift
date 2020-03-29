//
// UserImpactWebsiteTimeThreshold.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UserImpactWebsiteTimeThreshold: Codable { 


    public var users: Int?
    public var userPercentage: Double?
    public var type: String
    public var timeWindow: Int64?

    public init(users: Int?, userPercentage: Double?type: String, timeWindow: Int64?) {
        self.users = users
        self.userPercentage = userPercentage
        self.type = type
        self.timeWindow = timeWindow
    }

}