//
//  ReservationView.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 04/06/23.
//

import SwiftUI

struct ReservationView: View {
    @EnvironmentObject var filmViewModel: ViewModel
    var ms: MovieShow
    
    var body: some View {
        ZStack{
            Image(ms.film.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .overlay(Color.black.opacity(0.5))

            VStack{
                Text("Reservation")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                
                SeatGridView()
                    .frame(width: UIScreen.main.bounds.size.width, height: 300)
                    
                    
                HStack{
                    Image(systemName: "chair.lounge.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                    Text("Available")
                        .foregroundColor(.white)
                    Image(systemName: "chair.lounge.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.red)
                    Text("Reserved")
                        .foregroundColor(.white)
                    Image(systemName: "chair.lounge.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.green)
                    Text("Selected")
                        .foregroundColor(.white)
                    
                }
                
                Spacer()
                

            }
        }
        
    }
}

struct ReservationView_Previews: PreviewProvider {
    static var modelFilm = ViewModel()
    static var previews: some View {
        ReservationView(ms: modelFilm.movieshows[0])
            .environmentObject(modelFilm)
    }
}
