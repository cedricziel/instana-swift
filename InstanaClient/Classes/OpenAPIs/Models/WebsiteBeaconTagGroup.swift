//
// WebsiteBeaconTagGroup.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct WebsiteBeaconTagGroup: Codable { 


    public enum GroupbyTagEntity: String, Codable, CaseIterable {
        case notApplicable = "NOT_APPLICABLE"
        case destination = "DESTINATION"
        case source = "SOURCE"
    }
    public var groupbyTag: String
    public var groupbyTagSecondLevelKey: String?
    public var groupbyTagEntity: GroupbyTagEntity?

    public init(groupbyTag: String, groupbyTagSecondLevelKey: String?, groupbyTagEntity: GroupbyTagEntity?) {
        self.groupbyTag = groupbyTag
        self.groupbyTagSecondLevelKey = groupbyTagSecondLevelKey
        self.groupbyTagEntity = groupbyTagEntity
    }

}
