//
// Service.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Service: Codable { 


    public enum Types: String, Codable, CaseIterable {
        case undefined = "UNDEFINED"
        case rpc = "RPC"
        case event = "EVENT"
        case graphql = "GRAPHQL"
        case batch = "BATCH"
        case shell = "SHELL"
        case http = "HTTP"
        case sdk = "SDK"
        case _internal = "INTERNAL"
        case database = "DATABASE"
        case messaging = "MESSAGING"
        case page = "PAGE"
        case pageResource = "PAGE_RESOURCE"
    }
    public enum EntityType: String, Codable, CaseIterable {
        case application = "APPLICATION"
        case service = "SERVICE"
        case endpoint = "ENDPOINT"
    }
    public var id: String?
    public var label: String?
    public var types: [Types]
    public var technologies: [String]
    public var entityType: EntityType?

    public init(id: String?, label: String?, types: [Types], technologies: [String], entityType: EntityType?) {
        self.id = id
        self.label = label
        self.types = types
        self.technologies = technologies
        self.entityType = entityType
    }

}
