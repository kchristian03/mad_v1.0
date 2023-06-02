//
//  FilmViewModel.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 01/06/23.
//

import Foundation
import SwiftUI
import Combine

class ViewModel: ObservableObject {
    @Published var films: [Film] = [
        Film(
            title: "Morbius",
            genre: "Horror",
            releaseDate: "March 10, 2022",
            duration: "1h 44m",
            rating: 4.1,
            imageName: "poster1",
            category: "Popular Now",
            synopsis: "blabalalba"
        ),
        Film(
            title: "Sonic the Hedgehog 2",
            genre: "Adventure/Comedy",
            releaseDate: "March 30, 2022",
            duration: "2h 10m",
            rating: 4.7,
            imageName: "poster2",
            category: "Popular Now",
            synopsis: "yegfads"
        ),
        Film(
            title: "Doctor Strange Multiverse of Madness",
            genre: "Action/Adventure",
            releaseDate: "May 2, 2022",
            duration: "2h 6m",
            rating: 3.5,
            imageName: "poster3",
            category: "Popular Now",
            synopsis: "dfmakfa"
        ),
        Film(
            title: "Doctor Strange Multiverse of Madness",
            genre: "Action/Adventure",
            releaseDate: "May 2, 2022",
            duration: "2h 6m",
            rating: 3.5,
            imageName: "poster7",
            category: "Now in Cinema",
            synopsis: "fejae"
        ),
        Film(
            title: "Doctor Strange Multiverse of Madness",
            genre: "Action/Adventure",
            releaseDate: "May 2, 2022",
            duration: "2h 6m",
            rating: 3.5,
            imageName: "poster13",
            category: "Coming Soon",
            synopsis: "epqorir3"
        ),
    ]
    @Published var popularNowFilms: [Film] = []
    @Published var comingSoonFilms: [Film] = []
    @Published var nowPlayingFilms: [Film] = []
    @Published var favoriteFilms: [Film] = []
    
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        loadFilms()
    }
    
    func loadFilms() {
        
        // Categorize films
        popularNowFilms = films.filter { film in
            film.category == "Popular Now"
        }
        nowPlayingFilms = films.filter { film in
            film.category == "Now in Cinema"
        }
        comingSoonFilms = films.filter { film in
            film.category == "Coming Soon"
        }
        
        favoriteFilms = [films.first, films.last].compactMap { $0 }
    }
}
