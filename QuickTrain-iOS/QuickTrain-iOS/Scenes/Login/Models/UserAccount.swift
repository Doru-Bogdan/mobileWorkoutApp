//
//  UserAccount.swift
//  QuickTrain-iOS
//
//  Created by Doru Mancila on 23.12.2020.
//

import Foundation
import RealmSwift

class UserAccount: Object, Codable {
    @Persisted var email: String?
    @Persisted var firstName: String?
    @Persisted(primaryKey: true) var id: String?
    @Persisted var imageURL: String?
    @Persisted var lastName: String?
    @Persisted var username: String?

    
    enum CodingKeys: String, CodingKey {
            case id
            case firstName = "first_name"
            case lastName = "last_name"
            case username, email
            case imageURL = "certificateUrl"
        }
}

struct Meta: Codable {
    let serverTime: String?
    let statusCode: Int?
    let message: String?
}

class GetAccountResponse: Codable {
    let data: UserAccount?
}
