//
// Role.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Role: Codable { 


    public var id: String?
    public var name: String?
    public var canConfigureServiceMapping: Bool?
    public var canConfigureEumApplications: Bool?
    public var canConfigureMobileAppMonitoring: Bool?
    public var canConfigureUsers: Bool?
    public var canInstallNewAgents: Bool?
    public var canSeeUsageInformation: Bool?
    public var canConfigureIntegrations: Bool?
    public var canSeeOnPremLicenseInformation: Bool?
    public var canConfigureRoles: Bool?
    public var canConfigureCustomAlerts: Bool?
    public var canConfigureApiTokens: Bool?
    public var canConfigureAgentRunMode: Bool?
    public var canViewAuditLog: Bool?
    public var canConfigureObjectives: Bool?
    public var canConfigureAgents: Bool?
    public var canConfigureAuthenticationMethods: Bool?
    public var canConfigureApplications: Bool?
    public var canConfigureTeams: Bool?
    public var restrictedAccess: Bool?
    public var canConfigureReleases: Bool?
    public var canConfigureLogManagement: Bool?

    public init(id: String?, name: String?, canConfigureServiceMapping: Bool?, canConfigureEumApplications: Bool?, canConfigureMobileAppMonitoring: Bool?, canConfigureUsers: Bool?, canInstallNewAgents: Bool?, canSeeUsageInformation: Bool?, canConfigureIntegrations: Bool?, canSeeOnPremLicenseInformation: Bool?, canConfigureRoles: Bool?, canConfigureCustomAlerts: Bool?, canConfigureApiTokens: Bool?, canConfigureAgentRunMode: Bool?, canViewAuditLog: Bool?, canConfigureObjectives: Bool?, canConfigureAgents: Bool?, canConfigureAuthenticationMethods: Bool?, canConfigureApplications: Bool?, canConfigureTeams: Bool?, restrictedAccess: Bool?, canConfigureReleases: Bool?, canConfigureLogManagement: Bool?) {
        self.id = id
        self.name = name
        self.canConfigureServiceMapping = canConfigureServiceMapping
        self.canConfigureEumApplications = canConfigureEumApplications
        self.canConfigureMobileAppMonitoring = canConfigureMobileAppMonitoring
        self.canConfigureUsers = canConfigureUsers
        self.canInstallNewAgents = canInstallNewAgents
        self.canSeeUsageInformation = canSeeUsageInformation
        self.canConfigureIntegrations = canConfigureIntegrations
        self.canSeeOnPremLicenseInformation = canSeeOnPremLicenseInformation
        self.canConfigureRoles = canConfigureRoles
        self.canConfigureCustomAlerts = canConfigureCustomAlerts
        self.canConfigureApiTokens = canConfigureApiTokens
        self.canConfigureAgentRunMode = canConfigureAgentRunMode
        self.canViewAuditLog = canViewAuditLog
        self.canConfigureObjectives = canConfigureObjectives
        self.canConfigureAgents = canConfigureAgents
        self.canConfigureAuthenticationMethods = canConfigureAuthenticationMethods
        self.canConfigureApplications = canConfigureApplications
        self.canConfigureTeams = canConfigureTeams
        self.restrictedAccess = restrictedAccess
        self.canConfigureReleases = canConfigureReleases
        self.canConfigureLogManagement = canConfigureLogManagement
    }

}
