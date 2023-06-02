//
//  ScrollSection.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 01/06/23.
//

import SwiftUI

struct ScrollSection: View {
//    @State var title: String = "Now Playing"
    
    //    @State var posters: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5", "poster6"]
    
    var categoryName : String
    var films: [Film]
    
//    @Binding var selectedFilmID: UUID?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20.0) {
                    ForEach(films) { film in
                        NavigationLink {
                            DetailFilm(film: film)
                        } label: {
                            Image(film.imageName)
                        }
                    }
                    
                }
                .offset(x: 20)
                .padding(.trailing, 40)
            }
        }
    }
}

struct ScrollSection_Previews: PreviewProvider {
    
    static var films = ViewModel().films
    
    static var previews: some View {
        ScrollSection(categoryName: films[0].category,
                      films: Array(films.prefix(2))
        )
    }
}
