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
        NavigationView {
            ZStack {
                Color("backgroundPrimary").edgesIgnoringSafeArea(.all)
                
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
            
            
            //            .toolbar {
            //                ToolbarItem(placement: .navigationBarLeading) {
            //                    Text("Lokasi")
            //                        .font(.largeTitle)
            //                        .fontWeight(.bold)
            //                        .foregroundColor(.white)
            //                        .padding(.top, 50)
            //                }
            //            }
            
        }
        .onAppear {
            cinemaViewModel.loadCinema()
        }
    }
    
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        let cinemaViewModel = CinemaViewModel()
        return LocationView(cinemaViewModel: cinemaViewModel)
    }
}
