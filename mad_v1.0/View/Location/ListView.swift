////
////  ListView.swift
////  mad_v1.0
////
////  Created by MacBook Pro on 06/06/23.
////
//
//import SwiftUI
//
//struct ListView: View {
//    @ObservedObject var cinemaViewModel: CinemaViewModel
//
//    var body: some View {
//        NavigationView {
//            List(cinemas) { cinema in
//                NavigationLink(destination: DetailLocationView(cinema: cinema)) {
//                    VStack(alignment: .leading) {
//                        Text(cinema.name)
//                            .font(.headline)
//                        Text(cinema.address)
//                            .font(.subheadline)
//                    }
//                }
//            }
//            .navigationTitle("Cinemas")
//        }
//        .onAppear {
//            cinemaViewModel.loadCinema()
//        }
//    }
//}
//
//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView(cinemaViewModel: CinemaViewModel())
//    }
//}
