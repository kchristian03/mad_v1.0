//
//  Cinema.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 03/06/23.
//

import Foundation
import SwiftUI

struct Cinema: Codable, Hashable{
//    var id: Int
    var name:String
    var address: String
    var coordinates: Coordinates
//    var films: Film
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
