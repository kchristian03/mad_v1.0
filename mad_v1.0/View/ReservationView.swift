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
    @State private var selectedSeats: [SelectedSeat] = []
    
    var body: some View {
        ZStack{
            Image(ms.film.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .overlay(Color.white.opacity(0.7))
            VStack{
//                @Binding var selectedSeats: [SelectedSeat]
                
                Text("Reservation")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                SeatGridView(selectedSeats: selectedSeats)
                    .padding()
                    .frame(width: UIScreen.main.bounds.size.width)
                    .background(
                        RoundedRectangle(cornerRadius: 24)
                            .background(Color.black)
                            .padding(.horizontal)
                            .opacity(0.5)
                    )
                
                HStack{
                    Image(systemName: "chair.lounge.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(#colorLiteral(red: 0.85, green: 0.85, blue: 0.85, alpha: 1)))
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
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .background(Color.black)
                        .opacity(0.5)
                        .frame(minWidth: UIScreen.main.bounds.size.width)
                )
                
                
                Text("Selected Seats: \(selectedSeats.count)")
                    .font(.headline)
                    .padding()

                ForEach(SeatGridView().selectedSeats) { seating in
                    Text(seating.id)
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
