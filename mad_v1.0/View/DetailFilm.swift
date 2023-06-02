//
//  DetailFilm.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 01/06/23.
//

import SwiftUI

struct DetailFilm: View {
    
    @EnvironmentObject var filmViewModel: ViewModel
    
    var film: Film
    
    var body: some View {
            VStack(spacing: 20) {
                Image(film.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                
                Text(film.title)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(film.genre)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("Release Date: \(film.releaseDate)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("Duration: \(film.duration)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("Rating: \(film.rating)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
            .navigationBarTitle(film.title)
    }
}

struct DetailFilm_Previews: PreviewProvider {
    static var modelFilm = ViewModel()
    
    static var previews: some View {
        DetailFilm(film: modelFilm.films[0])
            .environmentObject(modelFilm)
    }
}
