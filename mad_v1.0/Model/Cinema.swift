//
//  Cinema.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 03/06/23.
//

import Foundation

struct Cinema: Codable, Identifiable {
    var id: Int
    var cinema: CinemaDetails
    
    struct CinemaDetails: Codable {
        var name: String
        var address: String
        var coordinates: Coordinates
        var films: [Film]
        
        struct Coordinates: Codable {
            var latitude: Double
            var longitude: Double
        }
        
        struct Film: Codable {
            var id: Int
            var title: String
            var genre: String
            var releaseDate: String
            var duration: String
            var rating: String
            var imageName: String
            var category: String
            var synopsis: String
        }
    }
}
