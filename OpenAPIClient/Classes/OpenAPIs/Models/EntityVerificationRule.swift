//
// EntityVerificationRule.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct EntityVerificationRule: Codable { 


    public enum MatchingOperator: String, Codable {
        case _is = "IS"
        case contains = "CONTAINS"
        case startsWith = "STARTS_WITH"
        case endsWith = "ENDS_WITH"
        case _none = "NONE"
    }
    public var matchingEntityType: String
    public var matchingOperator: MatchingOperator
    public var matchingEntityLabel: String
    public var offlineDuration: Int64?
    /** Values: &#x60;\&quot;THRESHOLD\&quot;&#x60;  &#x60;\&quot;SYSTEM\&quot;&#x60;  &#x60;\&quot;ENTITY_VERIFICATION\&quot;&#x60; */
    public var ruleType: String
    public var severity: Int?

    public init(matchingEntityType: String, matchingOperator: MatchingOperator, matchingEntityLabel: String, offlineDuration: Int64?ruleType: String, severity: Int?) {
        self.matchingEntityType = matchingEntityType
        self.matchingOperator = matchingOperator
        self.matchingEntityLabel = matchingEntityLabel
        self.offlineDuration = offlineDuration
        self.ruleType = ruleType
        self.severity = severity
    }

}