//
// TraceResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct TraceResult: Codable { 


    public var items: [TraceItem]
    public var canLoadMore: Bool?
    public var totalHits: Int?
    public var totalRepresentedItemCount: Int?

    public init(items: [TraceItem], canLoadMore: Bool?, totalHits: Int?, totalRepresentedItemCount: Int?) {
        self.items = items
        self.canLoadMore = canLoadMore
        self.totalHits = totalHits
        self.totalRepresentedItemCount = totalRepresentedItemCount
    }

}
