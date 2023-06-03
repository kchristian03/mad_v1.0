//
//  DetailFilm.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 01/06/23.
//

import SwiftUI

struct DetailFilm: View {
    
    @EnvironmentObject var filmViewModel: ViewModel
    
    var ms: MovieShow
    
    var body: some View {
            VStack(spacing: 20) {
                Image(ms.film.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                
                Text(ms.film.title)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(ms.film.genre)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("Release Date: \(ms.film.releaseDate)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("Duration: \(ms.film.duration)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("Rating: \(ms.film.rating)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
            .navigationBarTitle(ms.film.title)
    }
}

struct DetailFilm_Previews: PreviewProvider {
    static var modelFilm = ViewModel()
    
    static var previews: some View {
        DetailFilm(ms: modelFilm.movieshows[0])
            .environmentObject(modelFilm)
    }
}
