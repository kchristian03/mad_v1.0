//
//  ContentView.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 25/05/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var environment: ViewModel = ViewModel()
    
    @State var currentTab: Tab = .home
    
    enum Tab{
        case home
    }
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
//        NavigationView {
//            VStack(spacing: 0) {
//                TabView(selection: $currentTab) {
//                    HomeView()
//                        .tabItem {
//                            Label("Home", systemImage: "house.fill")
//                                .imageScale(.large)
//                                .foregroundColor(.white)
//                        }
//                        .tag(Tab.home)
//
//                }
//                .accentColor(.black)
//            }
//            .ignoresSafeArea(.keyboard)
//        }
        
        NavigationStack {
            splash()
        }.environmentObject(environment)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}
