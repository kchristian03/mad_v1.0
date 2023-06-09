//
//  LocationView.swift
//  mad_v1.0
//
//  Created by Nael on 04/06/23.
//

import SwiftUI

struct LocationView: View {
    @ObservedObject var cinemaViewModel: CinemaViewModel
    
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
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal)
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 30)
            
            ScrollView {
                
                
                VStack {
                    CustomList(cinemaName: "Ye")
                    CustomList(cinemaName: "Ye")
                    CustomList(cinemaName: "Ye")
                    Spacer()
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
                
                VStack {
                    CustomList(cinemaName: "Ye")
                    CustomList(cinemaName: "Ye")
                    CustomList(cinemaName: "Ye")
                    Spacer()
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
