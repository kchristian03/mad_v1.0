//
//  splash.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 04/06/23.
//

import SwiftUI




struct splash: View {
    @State private var isActive = false
    var body: some View {
        VStack{
            if self.isActive{
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                Spacer()
                
                NavigationLink {
                    HomeView()
//                    ListView(cinemaViewModel: CinemaViewModel())
                } label: {
                    Label("Login with Apple", systemImage: "apple.logo")
                }
            }else{
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                withAnimation{
                    self.isActive = true
                }
            }
        }
    }
}



struct splash_Previews: PreviewProvider {
    static var previews: some View {
        splash()
    }
}
