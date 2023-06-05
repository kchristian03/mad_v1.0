//
//  MovieShow.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 03/06/23.
//

import Foundation

//digunakan untuk property image
import SwiftUI

struct MovieShow: Decodable, Identifiable{
    var id: Int
    var film: Film
    var cinema: [Cinema]
    
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
    
    struct Cinema: Codable {
        var name: String
        var address: String
        var coordinates: Coordinates
        
        struct Coordinates: Codable {
            var latitude: Double
            var longitude: Double
        }
        
    }
//    var startTime
//    var endTime
    
}
