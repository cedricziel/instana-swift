//
// OpsgenieIntegration.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct OpsgenieIntegration: Codable { 


    public enum Region: String, Codable {
        case us = "US"
        case eu = "EU"
    }
    public var apiKey: String
    public var tags: String?
    public var region: Region
    public var alias: String?
    public var id: String?
    public var kind: String
    public var name: String

    public init(apiKey: String, tags: String?, region: Region, alias: String?id: String?, kind: String, name: String) {
        self.apiKey = apiKey
        self.tags = tags
        self.region = region
        self.alias = alias
        self.id = id
        self.kind = kind
        self.name = name
    }

}