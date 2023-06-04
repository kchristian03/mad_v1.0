//
//  HomeView.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 01/06/23.
//

import SwiftUI

struct HomeView: View {
    
    
    @EnvironmentObject var filmViewModel : ViewModel
    
    var body: some View {
        VStack(spacing: 0.0) {
            
            CustomSearchBar()
                .padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 20))
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20.0) {
                    
                    ScrollSection(categoryName: "Popular Now 🔥", films: filmViewModel.popularNowFilms)
                    ScrollSection(categoryName: "Now Playing", films: filmViewModel.nowPlayingFilms)
                    ScrollSection(categoryName: "Coming Soon", films: filmViewModel.comingSoonFilms)
                    
                }
                .padding(.bottom, 90)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color("backgroundPrimary").ignoresSafeArea())
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ViewModel())
    }
}
