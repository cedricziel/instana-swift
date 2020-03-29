//
// CursorPagination.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CursorPagination: Codable { 


    public var retrievalSize: Int?
    public var offset: Int?
    public var ingestionTime: Int64?

    public init(retrievalSize: Int?, offset: Int?, ingestionTime: Int64?) {
        self.retrievalSize = retrievalSize
        self.offset = offset
        self.ingestionTime = ingestionTime
    }

}
