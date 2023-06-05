//
//  CinemaViewModel.swift
//  mad_v1.0
//
//  Created by Nael on 04/06/23.
//

import Foundation

import Foundation

class CinemaViewModel: ObservableObject {
    @Published var cinemas: [Cinema] = []
    
    func loadCinema() {
        if let path = Bundle.main.path(forResource: "cinema", ofType: "json", inDirectory: "Resources") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let decoder = JSONDecoder()
                cinemas = try decoder.decode([Cinema].self, from: data)
            } catch {
                print("Error: \(error)")
            }
        }
    }
}
