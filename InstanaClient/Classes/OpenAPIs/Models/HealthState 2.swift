//
// HealthState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct HealthState: Codable { 


    public enum Health: String, Codable, CaseIterable {
        case red = "RED"
        case yellow = "YELLOW"
        case green = "GREEN"
    }
    public var health: Health?
    public var messages: [String]?

    public init(health: Health?, messages: [String]?) {
        self.health = health
        self.messages = messages
    }

}
