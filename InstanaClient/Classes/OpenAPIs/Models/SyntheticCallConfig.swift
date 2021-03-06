//
// SyntheticCallConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SyntheticCallConfig: Codable { 


    public var defaultRulesEnabled: Bool?
    public var customRules: [SyntheticCallRule]

    public init(defaultRulesEnabled: Bool?, customRules: [SyntheticCallRule]) {
        self.defaultRulesEnabled = defaultRulesEnabled
        self.customRules = customRules
    }

}
