//
// SoftwareUser.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SoftwareUser: Codable { 


    public var host: String?
    public var container: String?
    public var process: String?

    public init(host: String?, container: String?, process: String?) {
        self.host = host
        self.container = container
        self.process = process
    }

}
