//
// FullTrace.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct FullTrace: Codable { 


    public var id: String?
    public var totalErrorCount: Int?
    public var rootSpan: Span

    public init(id: String?, totalErrorCount: Int?, rootSpan: Span) {
        self.id = id
        self.totalErrorCount = totalErrorCount
        self.rootSpan = rootSpan
    }

}
