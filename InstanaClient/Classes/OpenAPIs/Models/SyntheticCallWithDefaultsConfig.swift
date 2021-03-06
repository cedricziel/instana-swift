//
// SyntheticCallWithDefaultsConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SyntheticCallWithDefaultsConfig: Codable { 


    public var defaultRulesEnabled: Bool?
    public var customRules: [SyntheticCallRule]
    public var defaultRules: [SyntheticCallRule]

    public init(defaultRulesEnabled: Bool?, customRules: [SyntheticCallRule], defaultRules: [SyntheticCallRule]) {
        self.defaultRulesEnabled = defaultRulesEnabled
        self.customRules = customRules
        self.defaultRules = defaultRules
    }

}
