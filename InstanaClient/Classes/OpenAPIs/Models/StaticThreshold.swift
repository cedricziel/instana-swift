//
// StaticThreshold.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct StaticThreshold: Codable { 


    public enum Operator: String, Codable, CaseIterable {
        case gt = "GT"
        case gte = "GTE"
        case lt = "LT"
        case lte = "LTE"
    }
    public var value: Double?
    public var type: String
    public var _operator: Operator
    public var lastUpdated: Int64?

    public init(value: Double?, type: String, _operator: Operator, lastUpdated: Int64?) {
        self.value = value
        self.type = type
        self._operator = _operator
        self.lastUpdated = lastUpdated
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case value
        case type
        case _operator = "operator"
        case lastUpdated
    }

}
