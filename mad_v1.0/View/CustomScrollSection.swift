//
//  CustomScrollSection.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 06/06/23.
//

import SwiftUI

struct CustomScrollSection: View {
    var categoryName: String
    var films: [MovieShow]

    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.title2)
                .bold()
                .foregroundColor(.black)
                .padding(.horizontal, 20)

            if UIDevice.current.userInterfaceIdiom == .pad {
                iPadLayout
            } else {
                iPhoneLayout
            }
        }
    }

    @ViewBuilder
    var iPadLayout: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 20) {
                ForEach(films) { film in
                    NavigationLink(destination: DetailFilm(ms: film)) {
                        FilmPosterView(imageName: film.film.imageName)
                            .frame(height: 280)
                    }
                }
            }
            .padding(.leading, 20)
            .padding(.trailing, 40)
        }
    }

    @ViewBuilder
    var iPhoneLayout: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(films) { film in
                    NavigationLink(destination: DetailFilm(ms: film)) {
                        FilmPosterView(imageName: film.film.imageName)
                            .frame(height: 128)
                    }
                }
            }
            .padding(.leading, 20)
            .padding(.trailing, 40)
        }
    }
}

struct CustomScrollSection_Previews: PreviewProvider {
    static var films = ViewModel().movieshows

    static var previews: some View {
        Group {
            CustomScrollSection(categoryName: films[0].film.category, films: Array(films.prefix(2)))
                .previewDevice("iPhone 13")
            
            CustomScrollSection(categoryName: films[0].film.category, films: Array(films.prefix(2)))
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
        }
    }
}

struct FilmPosterView: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
    }
}
