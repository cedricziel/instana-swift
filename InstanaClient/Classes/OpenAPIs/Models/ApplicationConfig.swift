//
// ApplicationConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ApplicationConfig: Codable { 


    public enum Scope: String, Codable, CaseIterable {
        case noDownstream = "INCLUDE_NO_DOWNSTREAM"
        case immediateDownstreamDatabaseAndMessaging = "INCLUDE_IMMEDIATE_DOWNSTREAM_DATABASE_AND_MESSAGING"
        case allDownstream = "INCLUDE_ALL_DOWNSTREAM"
    }
    public enum BoundaryScope: String, Codable, CaseIterable {
        case all = "ALL"
        case inbound = "INBOUND"
        case _default = "DEFAULT"
    }
    public var id: String?
    public var label: String?
    public var matchSpecification: Any
    public var scope: Scope
    public var boundaryScope: BoundaryScope

    public init(id: String?, label: String?, matchSpecification: Any, scope: Scope, boundaryScope: BoundaryScope) {
        self.id = id
        self.label = label
        self.matchSpecification = matchSpecification
        self.scope = scope
        self.boundaryScope = boundaryScope
    }

}
