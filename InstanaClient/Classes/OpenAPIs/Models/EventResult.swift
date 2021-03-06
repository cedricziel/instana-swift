//
// EventResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct EventResult: Codable { 


    public var eventId: String?
    public var start: Int64?
    public var end: Int64?
    public var triggeringTime: Int64?
    public var type: String?
    public var state: String?
    public var problem: String?
    public var fixSuggestion: String?
    public var severity: Int?
    public var snapshotId: String?

    public init(eventId: String?, start: Int64?, end: Int64?, triggeringTime: Int64?, type: String?, state: String?, problem: String?, fixSuggestion: String?, severity: Int?, snapshotId: String?) {
        self.eventId = eventId
        self.start = start
        self.end = end
        self.triggeringTime = triggeringTime
        self.type = type
        self.state = state
        self.problem = problem
        self.fixSuggestion = fixSuggestion
        self.severity = severity
        self.snapshotId = snapshotId
    }

}
