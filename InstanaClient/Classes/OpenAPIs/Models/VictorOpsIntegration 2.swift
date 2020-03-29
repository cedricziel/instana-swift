//
// VictorOpsIntegration.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct VictorOpsIntegration: Codable { 


    public var apiKey: String
    public var routingKey: String
    public var id: String?
    public var kind: String
    public var name: String

    public init(apiKey: String, routingKey: Stringid: String?, kind: String, name: String) {
        self.apiKey = apiKey
        self.routingKey = routingKey
        self.id = id
        self.kind = kind
        self.name = name
    }

}
