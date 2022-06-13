//
//  GenericUser.swift
//  QuickTrain-iOS
//
//  Created by Doru Mancila on 08.12.2020.
//

import Foundation

struct GenericUser {
    let email: String?
    let username: String?
    let password: String?
    let firstName: String?
    let lastName: String?
}

extension GenericUser: Codable {
    enum CodingKeys: String, CodingKey {
        case email, password, firstName, lastName
        case username = "login"
    }
}
