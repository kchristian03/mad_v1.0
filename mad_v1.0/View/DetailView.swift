//
//  DetailView.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 05/06/23.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var filmViewModel: ViewModel
    var ms: MovieShow
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
//    @State private var showReservationAlert = false
    @State private var selectedRectangleIndex: Int?
    
    var body: some View {
        NavigationView {
            VStack {
                Image(ms.film.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    HStack {
                        ForEach(0..<5) { _ in
                            Image(systemName: "star.fill")
                                .foregroundColor(.black)
                                .padding(1)
                        }
                        
                        Text(ms.film.rating)
                            .font(.headline)
                        
                        Spacer()
                        
                        Text(ms.film.duration)
                            .font(.headline)
                            .padding(15)
                    }
                    .padding()
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text(ms.film.title)
                                .font(.headline)
                            
                            Text(ms.film.genre)
                                .font(.subheadline)
                        }
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    VStack {
                        Text(ms.film.synopsis)
                            .font(.subheadline)
                            .frame(width: 350, height: 100)
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack(spacing: 10) {
                            ForEach(0..<10) { index in
//                                VStack {
//                                    Rectangle()
//                                        .foregroundColor(selectedRectangleIndex == index ? .white : .black)
//                                        .frame(width: 60, height: 80)
//                                        .cornerRadius(10)
//                                        .padding(.bottom)
//                                        .overlay(
//                                            VStack {
//                                                Text(getDayOfWeek(for: index))
//                                                    .font(.headline)
//                                                    .foregroundColor(selectedRectangleIndex == index ? .black : .white)
//                                                    .multilineTextAlignment(.center)
//
//                                                Text(getDate(for: index))
//                                                    .font(.headline)
//                                                    .foregroundColor(selectedRectangleIndex == index ? .black : .white)
//                                                    .multilineTextAlignment(.center)
//                                            }
//                                                .padding(.bottom)
//                                        )
//                                        .onTapGesture {
////                                            showReservationAlert = true
//                                            selectedRectangleIndex = index
//                                        }
//
//                                    Rectangle()
//                                        .foregroundColor(selectedRectangleIndex == index ? .white : .black)
//                                        .frame(width: 80, height: 40)
//                                        .cornerRadius(10)
//                                        .overlay(
//                                            VStack {
//                                                Text(getTime(for: index))
//                                                    .font(.headline)
//                                                    .foregroundColor(selectedRectangleIndex == index ? .black : .white)
//                                                    .multilineTextAlignment(.center)
//
//                                            }
//                                        )
//                                        .onTapGesture {
////                                            showReservationAlert = true
//                                            selectedRectangleIndex = index
//                                        }
//
//                                    Spacer()
//                                }
                            }
                        }
                        .padding(.vertical)
                    }
//                    .alert(isPresented: $showReservationAlert, content: {
//                        Alert(title: Text("Reservation"), message: nil, primaryButton: .default(Text("Reservation"), action: {
//                        }), secondaryButton: .cancel())
//                    })
//                    .frame(width: 350)
                    
                    NavigationLink(destination: ReservationView(ms: ms)) {
                        Text("Buy Now")
                    }
                    .frame(width: 120, height: 50)
                    .background(selectedRectangleIndex != nil ? Color.white : Color.black)
                    .foregroundColor(selectedRectangleIndex != nil ? Color.black : Color.white)
                    .cornerRadius(10)
                    .padding(.vertical)
                }
                .frame(width: 400, height: 400)
                .background(Color.white.opacity(0.5))
                .cornerRadius(10)
                .padding()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    //untuk random harinya
    func getDayOfWeek(for index: Int) -> String {
        let daysOfWeek = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
        return daysOfWeek[index % daysOfWeek.count]
    }
    
    //untuk random waktunya
    func getTime(for index: Int) -> String {
        let times = ["10:00", "12:30", "15:45", "18:00", "20:15"]
        return times[index % times.count]
    }
    
    //untuk random tanggalnya
    func getDate(for index: Int) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd"
        
        let startDate = Date()
        let calendar = Calendar.current
        let date = calendar.date(byAdding: .day, value: index, to: startDate)
        
        return dateFormatter.string(from: date!)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var modelFilm = ViewModel()
    
    static var previews: some View {
        DetailView(ms: modelFilm.movieshows[0])
            .environmentObject(modelFilm)
    }
}
