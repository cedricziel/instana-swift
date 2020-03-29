//
// Tag.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Tag: Codable { 


    public enum ModelType: String, Codable, CaseIterable {
        case string = "STRING"
        case number = "NUMBER"
        case boolean = "BOOLEAN"
        case keyValuePair = "KEY_VALUE_PAIR"
    }
    public var name: String?
    public var type: ModelType?
    public var category: String?
    public var canApplyToSource: Bool?
    public var canApplyToDestination: Bool?
    public var sourceValueAvailableFrom: Int64?

    public init(name: String?, type: ModelType?, category: String?, canApplyToSource: Bool?, canApplyToDestination: Bool?, sourceValueAvailableFrom: Int64?) {
        self.name = name
        self.type = type
        self.category = category
        self.canApplyToSource = canApplyToSource
        self.canApplyToDestination = canApplyToDestination
        self.sourceValueAvailableFrom = sourceValueAvailableFrom
    }

}