//
//  Film.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 01/06/23.
//

import Foundation
import SwiftUI

struct Film : Identifiable, Codable{
    let id: UUID
    var title: String
    var genre: String
    var releaseDate: String
    var duration: String
    var rating: Double
    var imageName: String
//    var image: Image {
//        Image(imageName)
//    }
    
    init(id: UUID = UUID(), title: String, genre: String, releaseDate: String, duration: String, rating: Double, imageName: String){
        self.id = id
        self.title = title
        self.genre = genre
        self.releaseDate = releaseDate
        self.duration = duration
        self.rating = rating
        self.imageName = imageName
    }
}
var sampleFilm: [Film] = [
        Film(
            title: "Morbius",
            genre: "Horror",
            releaseDate: "March 10, 2022",
            duration: "1h 44m",
            rating: 4.1,
            imageName: "poster1"
        ),
        Film(
            title: "Sonic the Hedgehog 2",
            genre: "Adventure/Comedy",
            releaseDate: "March 30, 2022",
            duration: "2h 10m",
            rating: 4.7,
            imageName: "poster2"
        ),
        Film(
            title: "Doctor Strange Multiverse of Madness",
            genre: "Action/Adventure",
            releaseDate: "May 2, 2022",
            duration: "2h 6m",
            rating: 3.5,
            imageName: "poster3"
        ),
        
    ]

