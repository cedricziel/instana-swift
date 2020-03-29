//
// Threshold.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Threshold: Codable { 


    public enum Operator: String, Codable {
        case gt = "GT"
        case gte = "GTE"
        case lt = "LT"
        case lte = "LTE"
    }
    public var type: String
    public var _operator: Operator
    public var lastUpdated: Int64?

    public init(type: String, _operator: Operator, lastUpdated: Int64?) {
        self.type = type
        self._operator = _operator
        self.lastUpdated = lastUpdated
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case _operator = "operator"
        case lastUpdated
    }

}