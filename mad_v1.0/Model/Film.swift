//
//  Film.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 01/06/23.
//

import Foundation
import SwiftUI

struct Film : Identifiable, Hashable, Codable{
    let id: UUID
    var title: String
    var genre: String
    var releaseDate: String
    var duration: String
    var rating: Double
    var imageName: String
    var category: String
    var synopsis: String
    
    
    init(id: UUID = UUID(), title: String, genre: String, releaseDate: String, duration: String, rating: Double, imageName: String, category: String, synopsis: String){
        self.id = id
        self.title = title
        self.genre = genre
        self.releaseDate = releaseDate
        self.duration = duration
        self.rating = rating
        self.imageName = imageName
        self.category = category
        self.synopsis = synopsis
    }
}

