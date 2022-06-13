//
//  User.swift
//  QuickTrain-iOS
//
//  Created by Doru Mancila on 23.12.2020.
//

import Foundation
import RealmSwift

//struct User: Codable {
//    let certificateURL: String?
//    var currentPoints: Int?
//    let  id: Int?
//    var level: Int?
//    let userID: Int?
//
//
//    enum CodingKeys: String, CodingKey {
//        case certificateURL = "certificateUrl"
//        case currentPoints, id, level
//        case userID = "userId"
//    }
//}

struct GetUserResponse: Codable {
    let user: User?
    enum CodingKeys: String, CodingKey {
        case user = "data"
    }
}

// MARK: - DataClass
class User: Object, Codable {
    @Persisted(primaryKey: true) var id: String?
    @Persisted var firstName: String?
    @Persisted var lastName: String?
    @Persisted var username: String?
    @Persisted var email: String?
    @Persisted var certificateURL: String?
    @Persisted var level: Int?
    @Persisted var currentPoints: Int?

    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case username, email
        case certificateURL = "certificateUrl"
        case currentPoints, level
    }
}
