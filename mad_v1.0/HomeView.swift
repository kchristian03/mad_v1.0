//
//  HomeView.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 01/06/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var posters1: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5", "poster6"]
    
    @State var posters2: [String] = ["poster7", "poster8", "poster9", "poster10", "poster11", "poster12"]
    
    @State var posters3: [String] = ["poster13", "poster14", "poster15", "poster16", "poster17", "poster18"]
    
    var body: some View {
        VStack(spacing: 0.0) {
            //            Text("Choose Movie")
            //                .fontWeight(.bold)
            //                .font(.title3)
            //                .foregroundColor(.white)
            
            CustomSearchBar()
                .padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 20))
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20.0) {
                    ScrollSection(title: "Popular Now 🔥", posters: posters1)
                    
                    ScrollSection(title: "Now in Cinema 🎞️", posters: posters2)
                    
                    ScrollSection(title: "Coming Soon🗓️", posters: posters3)
                    
                    //                    ScrollSection(title: "Favorite", posters: posters1)
                }
                .padding(.bottom, 90)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color("backgroundPrimary").ignoresSafeArea())
            
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
