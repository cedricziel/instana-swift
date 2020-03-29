//
// AuditLogEntry.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct AuditLogEntry: Codable { 


    public var id: String?
    public var action: String?
    public var message: String?
    public var actor: LogEntryActor
    public var timestamp: Int64?

    public init(id: String?, action: String?, message: String?, actor: LogEntryActor, timestamp: Int64?) {
        self.id = id
        self.action = action
        self.message = message
        self.actor = actor
        self.timestamp = timestamp
    }

}
