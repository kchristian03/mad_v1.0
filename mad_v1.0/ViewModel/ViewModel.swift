//
//  FilmViewModel.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 01/06/23.
//

import Foundation
import SwiftUI
import Combine

final class ViewModel: ObservableObject {
    
    @Published var movieshows: [MovieShow] = load("movieshow.json")
    @Published var popularNowFilms: [MovieShow] = []
    @Published var comingSoonFilms: [MovieShow] = []
    @Published var nowPlayingFilms: [MovieShow] = []
    
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        loadFilms()
    }
    //method yang mengambil JSON data
    
    func loadFilms() {
        
        // Categorize films
        popularNowFilms = movieshows.filter { ms in
            ms.film.category == "Popular Now"
        }
        nowPlayingFilms = movieshows.filter { ms in
            ms.film.category == "Now in Cinema"
        }
        comingSoonFilms = movieshows.filter { ms in
            ms.film.category == "Coming Soon"
        }
        
//        favoriteFilms = [movieshows.first, movieshows.last].compactMap { $0 }
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
