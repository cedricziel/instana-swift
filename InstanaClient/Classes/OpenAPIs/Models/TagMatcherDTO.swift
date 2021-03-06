//
// TagMatcherDTO.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct TagMatcherDTO: Codable { 


    public enum Entity: String, Codable, CaseIterable {
        case notApplicable = "NOT_APPLICABLE"
        case destination = "DESTINATION"
        case source = "SOURCE"
    }
    public enum Operator: String, Codable, CaseIterable {
        case equals = "EQUALS"
        case notEqual = "NOT_EQUAL"
        case contains = "CONTAINS"
        case notContain = "NOT_CONTAIN"
        case isEmpty = "IS_EMPTY"
        case notEmpty = "NOT_EMPTY"
        case isBlank = "IS_BLANK"
        case notBlank = "NOT_BLANK"
        case startsWith = "STARTS_WITH"
        case endsWith = "ENDS_WITH"
    }
    public var key: String
    public var entity: Entity
    public var value: String?
    public var _operator: Operator


    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case key
        case entity
        case value
        case _operator = "operator"
    }

}
