//
// Application.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Application: Codable { 


    public enum EntityType: String, Codable {
        case application = "APPLICATION"
        case service = "SERVICE"
        case endpoint = "ENDPOINT"
    }
    public var id: String?
    public var label: String?
    public var boundaryScope: String?
    public var entityType: EntityType?

    public init(id: String?, label: String?, boundaryScope: String?, entityType: EntityType?) {
        self.id = id
        self.label = label
        self.boundaryScope = boundaryScope
        self.entityType = entityType
    }

}