//
// Pagination.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Pagination: Codable { 


    public var page: Int?
    public var pageSize: Int?

    public init(page: Int?, pageSize: Int?) {
        self.page = page
        self.pageSize = pageSize
    }

}
