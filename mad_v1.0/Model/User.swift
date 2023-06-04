//
//  User.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 04/06/23.
//

import Foundation

struct User : Identifiable, Hashable, Codable{
    let id: Int
    var name: String
    var username: String
    var password: String
    var appleID: String
}
