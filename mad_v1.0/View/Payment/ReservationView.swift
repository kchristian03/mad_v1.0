//
//  ReservationView.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 04/06/23.
//

import SwiftUI

struct ReservationView: View {
    @EnvironmentObject var filmViewModel: ViewModel
    @State var seatsSelected: [SelectedSeat] = []
    
    @State private var isPaymentChoicePresented = false
    
    var ms: MovieShow
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                Image(ms.film.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .overlay(Color.black.opacity(0.7))
                VStack{
                    Text("Reservation")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    
                    SeatGridView(selectedSeats: $seatsSelected)
                        .padding()
                        .frame(width: UIScreen.main.bounds.size.width)
                        .background(
                            RoundedRectangle(cornerRadius: 24)
                                .foregroundColor(.white.opacity(0.7))
                                .padding(.horizontal)
                        )
                    
                    HStack{
                        Image(systemName: "chair.lounge.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
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
                            .padding()
                            .frame(height: 72)
                            .foregroundColor(Color.white.opacity(0.7))
                            .frame(minWidth: UIScreen.main.bounds.size.width)
                    )
                    
                    if seatsSelected.count > 0{
                        ZStack{
                            RoundedRectangle(cornerRadius: 24)
                                .foregroundColor(Color.white.opacity(0.7))
                                .frame(width: 300, height: 150)
                            
                            VStack(alignment: .leading, spacing: 10){
                                HStack{
                                    Image(systemName: "calendar")
                                    Text("Senin, xx xxxxxx xxxx")
                                }
                                HStack{
                                    Image(systemName: "chair.lounge")
                                    ForEach(seatsSelected) {seat in Text(seat.id)}
                                }
                                HStack{
                                    Image(systemName: "banknote")
                                    let a = money(count: seatsSelected.count)
                                    Text("\(a)")
                                }
                                Button(action: {
                                    isPaymentChoicePresented = true
                                }) {
                                    Text("Reservation")
                                }
                            }
                            .sheet(isPresented: $isPaymentChoicePresented) {
                                PaymentChoice()
                            }
                        }
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

func money(count: Int)-> Int{
    var money = 0
    money = count * 50000
    return money
}



struct ReservationView_Previews: PreviewProvider {
    static var modelFilm = ViewModel()
    static var previews: some View {
        ReservationView(ms: modelFilm.movieshows[0])
            .environmentObject(modelFilm)
    }
}
