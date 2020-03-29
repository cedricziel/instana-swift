//
// SpecificJsErrorsWebsiteAlertRule.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SpecificJsErrorsWebsiteAlertRule: Codable { 


    public enum Operator: String, Codable, CaseIterable {
        case equals = "EQUALS"
        case contains = "CONTAINS"
        case lessThan = "LESS_THAN"
        case lessOrEqualThan = "LESS_OR_EQUAL_THAN"
        case greaterThan = "GREATER_THAN"
        case greaterOrEqualThan = "GREATER_OR_EQUAL_THAN"
        case notEmpty = "NOT_EMPTY"
        case notEqual = "NOT_EQUAL"
        case notContain = "NOT_CONTAIN"
        case isEmpty = "IS_EMPTY"
        case notBlank = "NOT_BLANK"
        case isBlank = "IS_BLANK"
        case startsWith = "STARTS_WITH"
        case endsWith = "ENDS_WITH"
    }
    public var _operator: Operator
    public var value: String?
    public var alertType: String
    public var metricName: String

    public init(_operator: Operator, value: String?alertType: String, metricName: String) {
        self._operator = _operator
        self.value = value
        self.alertType = alertType
        self.metricName = metricName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case _operator = "operator"
        case value
        case alertType
        case metricName
    }

}
