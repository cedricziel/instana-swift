//
// ThresholdRule.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ThresholdRule: Codable { 


    public enum Aggregation: String, Codable, CaseIterable {
        case sum = "SUM"
        case avg = "AVG"
        case min = "MIN"
        case max = "MAX"
        case _none = "NONE"
    }
    public enum ConditionOperator: String, Codable, CaseIterable {
        case gt = "GT"
        case gte = "GTE"
        case lt = "LT"
        case lte = "LTE"
        case eq = "EQ"
        case ne = "NE"
        case _none = "NONE"
    }
    public var metricName: String
    public var rollup: Int64?
    public var window: Int64?
    public var aggregation: Aggregation?
    public var conditionOperator: ConditionOperator
    public var conditionValue: Double?
    /** Values: &#x60;\&quot;THRESHOLD\&quot;&#x60;  &#x60;\&quot;SYSTEM\&quot;&#x60;  &#x60;\&quot;ENTITY_VERIFICATION\&quot;&#x60; */
    public var ruleType: String
    public var severity: Int?

    public init(metricName: String, rollup: Int64?, window: Int64?, aggregation: Aggregation?, conditionOperator: ConditionOperator, conditionValue: Double?ruleType: String, severity: Int?) {
        self.metricName = metricName
        self.rollup = rollup
        self.window = window
        self.aggregation = aggregation
        self.conditionOperator = conditionOperator
        self.conditionValue = conditionValue
        self.ruleType = ruleType
        self.severity = severity
    }

}
