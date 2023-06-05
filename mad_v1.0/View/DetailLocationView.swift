//
//  DetailLocationView.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 05/06/23.
//

import SwiftUI
import MapKit

struct DetailLocationView: View {
    @EnvironmentObject var filmViewModel: ViewModel
    
    @State var name: String = ""
    @State var address: String = ""
    @State var latitude: Double
    @State var longitude: Double
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        if horizontalSizeClass == .regular {
            iPadLayout
        } else {
            iPhoneLayout
        }
    }
    
    @ViewBuilder
    var iPadLayout: some View {
        ScrollView {
            VStack {
                MapViewModel(coordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude))
                    .frame(height: 600)
//                    .ignoresSafeArea(edges: .top)
                
                VStack {
                    Text(name)
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    HStack {
                        Image(systemName: "map")
                            .frame(width: 30, height: 30)
                        Text(address)
                            .font(.title)
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 30)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 30) {
                        CustomScrollSection(categoryName: "Playing in Cinema", films: filmViewModel.nowPlayingFilms)
                    }
                    .padding(.top, 60)
                    .padding(.horizontal)
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Regular 2D")
                        .font(.title2)
                        .bold()
                        .padding(.horizontal)
                        .padding(.horizontal)
                    
                    ScheduleComponent(jam: "10:00", jam2: "10:30", jam3: "12:00", jam4: "12:40")
                    ScheduleComponent(jam: "12:55", jam2: "13:00", jam3: "13:30", jam4: "14:10")
                    ScheduleComponent(jam: "14:40", jam2: "14:50", jam3: "15:00", jam4: "16:00")
                }
                .padding(.top, 60)
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationTitle("Location Details")
        }
    }
    
    @ViewBuilder
    var iPhoneLayout: some View {
        ScrollView {
            VStack {
                MapViewModel(coordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude))
                    .frame(height: 300)
                    .ignoresSafeArea(edges: .top)
                
                VStack {
                    Text(name)
                        .font(.title)
                        .bold()
                        .padding()
                    
                    HStack {
                        Image(systemName: "map")
                            .frame(width: 20, height: 20)
                        Text(address)
                            .font(.headline)
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20) {
                        CustomScrollSection(categoryName: "Playing in Cinema", films: filmViewModel.nowPlayingFilms)
                    }
                    .padding(.top, 40)
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Regular 2D")
                        .font(.headline)
                        .bold()
                    ScheduleComponent(jam: "10:00", jam2: "10:30", jam3: "12:00", jam4: "12:40")
                    ScheduleComponent(jam: "12:55", jam2: "13:00", jam3: "13:30", jam4: "14:10")
                    ScheduleComponent(jam: "14:40", jam2: "14:50", jam3: "15:00", jam4: "16:00")
                }
                .padding(.top, 30)
                
                Spacer()
            }
            .navigationTitle("Location Details")
        }
    }
}

struct DetailLocationView_Previews: PreviewProvider {
    static var previews: some View {
        DetailLocationView(name: "Ye", address: "Jl. Mayjen Sungkono No.89, Gn. Sari, Kec. Dukuhpakis, Surabaya, Jawa Timur 60225", latitude: -7.293442343525911, longitude: 112.7192663846563)
            .environmentObject(ViewModel())
            .previewDevice("iPad Pro (12.9-inch) (5th generation)")
    }
}
