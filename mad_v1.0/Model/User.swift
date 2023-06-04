//
//  User.swift
//  mad_v1.0
//
//  Created by ilham risqi on 04/06/23.
//

import Foundation

struct User{
    let id : UUID
    var name  : String
    var email : String
    var MovieShow : [String]
    
    
    
    init(id: UUID, name: String, email: String, movieShow: [String]) {
            self.id = id
            self.name = name
            self.email = email
            self.MovieShow = movieShow
        }

}


extension User{
   static let userdummy : User =
    User(
        id: UUID(), name: "ilham risqi", email: "ilhamrisqir@gmail.com", movieShow: ["Joker"]
    )
}


