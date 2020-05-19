//
//  TeamTreeModel.swift
//  tree demo
//
//  Created by Mamta on 12/05/20.
//  Copyright © 2020 Kiprosh. All rights reserved.
//

import Foundation
struct TeamTreeModel: Decodable {
    
    public var userId: String
    public var firstName: String
    public var lastName: String
    public var emailAddress: String
    public var phoneNumber: String
    public var organizationDistance: Int
    public var teamCount: Int
    public var leadCount: Int
    
    enum CodingKeys: String, CodingKey {
        case userId = "UserId"
        case firstName = "FirstName"
        case lastName = "LastName"
        case emailAddress = "EmailAddress"
        case phoneNumber = "PhoneNumber"
        case organizationDistance = "OrganizationDistance"
        case teamCount = "TeamCount"
        case leadCount = "LeadCount"
    }
}
