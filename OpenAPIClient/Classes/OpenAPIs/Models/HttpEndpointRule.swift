//
// HttpEndpointRule.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct HttpEndpointRule: Codable { 


    public var enabled: Bool?
    public var pathSegments: [HttpPathSegmentMatchingRule]
    public var testCases: [String]?

    public init(enabled: Bool?, pathSegments: [HttpPathSegmentMatchingRule], testCases: [String]?) {
        self.enabled = enabled
        self.pathSegments = pathSegments
        self.testCases = testCases
    }

}