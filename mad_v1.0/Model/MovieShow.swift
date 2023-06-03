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
    var cinema: Cinema
//    var startTime
//    var endTime
    
}
