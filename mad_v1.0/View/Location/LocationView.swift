//
//  LocationView.swift
//  mad_v1.0
//
//  Created by Nael on 04/06/23.
//

import SwiftUI

struct LocationView: View {
    @ObservedObject var cinemaViewModel: CinemaViewModel
//    let cinemas: Cinemax
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("backgroundPrimary").edgesIgnoringSafeArea(.all)
                
                if UIDevice.current.userInterfaceIdiom == .pad {
                    iPadLayout
                } else {
                    iPhoneLayout
                }
                
            }
            
        }
        .onAppear {
            cinemaViewModel.loadCinema()
        }
    }
    
    @ViewBuilder
    var iPadLayout: some View {
        VStack {
            HStack {
                Text("Lokasi")
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.horizontal)

            }
            .padding(.horizontal)
            .padding(.top, 30)
            
            ScrollView {
                
                VStack(){
                    ForEach(cinemas, id: \.self) { cinema in
                        CustomList(cinemaName: cinema.name) {
                            DetailLocationView(cinema: cinema)
                        }
                    }
                }
                .padding(.top)
            }
            .padding(.horizontal)
        }
        .padding(.top)
    }
    
    @ViewBuilder
    var iPhoneLayout: some View {
        VStack {
            ScrollView {
                HStack {
                    Text("Lokasi")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    Spacer()
                }
                
                VStack(){
                    ForEach(cinemas, id: \.self) { cinema in
                        CustomList(cinemaName: cinema.name) {
                            DetailLocationView(cinema: cinema)
                        }
                    }
                }
                .padding(.top)
            }
        }
        .padding(.top)
    }
    
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LocationView(cinemaViewModel: CinemaViewModel())
                .previewDevice("iPhone 13")
            
            LocationView(cinemaViewModel: CinemaViewModel())
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
        }
    }
}
