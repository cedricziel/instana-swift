//
// AlertingConfiguration.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct AlertingConfiguration: Codable { 


    public var id: String?
    public var alertName: String
    public var muteUntil: Int64?
    public var integrationIds: [String]
    public var eventFilteringConfiguration: EventFilteringConfiguration
    public var customPayload: String?

    public init(id: String?, alertName: String, muteUntil: Int64?, integrationIds: [String], eventFilteringConfiguration: EventFilteringConfiguration, customPayload: String?) {
        self.id = id
        self.alertName = alertName
        self.muteUntil = muteUntil
        self.integrationIds = integrationIds
        self.eventFilteringConfiguration = eventFilteringConfiguration
        self.customPayload = customPayload
    }

}
