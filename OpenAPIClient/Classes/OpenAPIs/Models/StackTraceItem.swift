//
// StackTraceItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct StackTraceItem: Codable { 


    public var file: String?
    public var method: String?
    public var line: String?

    public init(file: String?, method: String?, line: String?) {
        self.file = file
        self.method = method
        self.line = line
    }

}