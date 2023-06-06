//
//  TabPlace.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 06/06/23.
//

import SwiftUI

struct TabPlace: View {
    @State var currentTab: Tab = .home
    
    enum Tab{
        case home
        case ticket
        case location
        case profile
    }
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                TabView(selection: $currentTab) {
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "house.fill")
                                .imageScale(.large)
                                .foregroundColor(.white)
                        }
                        .tag(Tab.home)
//
                    TiketView()
                        .tabItem {
                            Label("Ticket", systemImage: "ticket")
                                .imageScale(.large)
                                .foregroundColor(.white)
                        }
                        .tag(Tab.ticket)
                    
                    LocationView(cinemaViewModel: CinemaViewModel())
                        .tabItem {
                            Label("Payment", systemImage: "map")
                                .imageScale(.large)
                                .foregroundColor(.white)
                        }
                        .tag(Tab.location)

                    ProfileView(user: User.userdummy)
                        .tabItem {
                            Label("Profile", systemImage: "person.fill")
                                .imageScale(.large)
                                .foregroundColor(.white)
                        }
                        .tag(Tab.profile)
                }
                .accentColor(.black)
            }
//            .ignoresSafeArea(.keyboard)
        }
    }
}

struct TabPlace_Previews: PreviewProvider {
    static var previews: some View {
        TabPlace()
            .environmentObject(ViewModel())
    }
}


