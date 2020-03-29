//
// WebsiteAlertConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct WebsiteAlertConfig: Codable { 


    public var name: String
    public var description: String?
    public var websiteId: String
    public var severity: Int?
    public var triggering: Bool?
    public var tagFilters: [TagFilter]
    public var rule: WebsiteAlertRule
    public var threshold: Threshold
    public var alertChannelIds: [String]
    public var granularity: Int64?
    public var timeThreshold: WebsiteTimeThreshold

    public init(name: String, description: String?, websiteId: String, severity: Int?, triggering: Bool?, tagFilters: [TagFilter], rule: WebsiteAlertRule, threshold: Threshold, alertChannelIds: [String], granularity: Int64?, timeThreshold: WebsiteTimeThreshold) {
        self.name = name
        self.description = description
        self.websiteId = websiteId
        self.severity = severity
        self.triggering = triggering
        self.tagFilters = tagFilters
        self.rule = rule
        self.threshold = threshold
        self.alertChannelIds = alertChannelIds
        self.granularity = granularity
        self.timeThreshold = timeThreshold
    }

}
