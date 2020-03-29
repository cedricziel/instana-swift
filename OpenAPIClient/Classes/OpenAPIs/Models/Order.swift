//
// Order.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Order: Codable { 


    public enum Direction: String, Codable {
        case asc = "ASC"
        case desc = "DESC"
    }
    public var by: String
    public var direction: Direction

    public init(by: String, direction: Direction) {
        self.by = by
        self.direction = direction
    }

}
