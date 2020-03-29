//
// UserResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UserResult: Codable { 


    public var id: String?
    public var email: String?
    public var fullName: String?
    public var roleId: String?

    public init(id: String?, email: String?, fullName: String?, roleId: String?) {
        self.id = id
        self.email = email
        self.fullName = fullName
        self.roleId = roleId
    }

}
