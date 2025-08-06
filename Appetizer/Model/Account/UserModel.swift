//
//  UserModel.swift
//  Appetizer
//
//  Created by Kaustubh kailas gade on 05/08/25.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDay = Date()
    var notificationEnabled = false
    var locationPermission = false
}
