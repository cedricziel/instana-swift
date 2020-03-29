//
// EventFilteringConfiguration.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct EventFilteringConfiguration: Codable { 


    public enum EventTypes: String, Codable {
        case incident = "INCIDENT"
        case critical = "CRITICAL"
        case warning = "WARNING"
        case change = "CHANGE"
        case online = "ONLINE"
        case offline = "OFFLINE"
        case _none = "NONE"
    }
    public var query: String?
    public var ruleIds: [String]?
    public var eventTypes: [EventTypes]?

    public init(query: String?, ruleIds: [String]?, eventTypes: [EventTypes]?) {
        self.query = query
        self.ruleIds = ruleIds
        self.eventTypes = eventTypes
    }

}
