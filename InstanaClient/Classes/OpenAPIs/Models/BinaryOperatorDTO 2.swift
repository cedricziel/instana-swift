//
// BinaryOperatorDTO.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct BinaryOperatorDTO: Codable { 


    public enum Conjunction: String, Codable, CaseIterable {
        case and = "AND"
        case or = "OR"
    }
    public var _left: Any
    public var _right: Any
    public var conjunction: Conjunction


    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case _left = "left"
        case _right = "right"
        case conjunction
    }

}