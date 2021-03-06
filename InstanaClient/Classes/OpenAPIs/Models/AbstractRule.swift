//
// AbstractRule.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct AbstractRule: Codable { 


    /** Values: &#x60;\&quot;THRESHOLD\&quot;&#x60;  &#x60;\&quot;SYSTEM\&quot;&#x60;  &#x60;\&quot;ENTITY_VERIFICATION\&quot;&#x60; */
    public var ruleType: String
    public var severity: Int?

    public init(ruleType: String, severity: Int?) {
        self.ruleType = ruleType
        self.severity = severity
    }

}
