//
//  CustomList.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 04/06/23.
//

import SwiftUI

struct CustomList<Destination: View>: View {
    let cinemaName: String
    var buttonDestination: () -> Destination
    
    var body: some View {
        if UIDevice.current.userInterfaceIdiom == .pad {
            iPadLayout
        } else {
            iPhoneLayout
        }
    }
    
    @ViewBuilder
        var iPadLayout: some View {
            VStack {
                Button(action: {}) {
                    NavigationLink(destination: buttonDestination) {
                        ZStack {
                            Rectangle()
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            
                            HStack {
                                Text(cinemaName)
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .bold()
                                Spacer()
                                Image(systemName: "greaterthan")
                                    .foregroundColor(.black)
                                    .bold()
                            }
                            .padding(.horizontal)
                        }
                        .frame(height: 69)
//                        .padding(.bottom)
                    }
                }
            }
            .padding(.horizontal)
        }

        @ViewBuilder
        var iPhoneLayout: some View {
            VStack {
                Button(action: {}) {
                    NavigationLink(destination: buttonDestination) {
                        ZStack {
                            Rectangle()
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            
                            HStack {
                                Text(cinemaName)
                                    .foregroundColor(.black)
                                    .bold()
                                Spacer()
                                Image(systemName: "greaterthan")
                                    .foregroundColor(.black)
                                    .bold()
                            }
                            .padding(.horizontal)
                        }
                        .frame(height: 49)
                    }
                }
            }
            .padding(.horizontal)
        }
    
}

struct CustomList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomList<Text>(cinemaName: "ABC Cinema", buttonDestination: {Text("Tehe <3")})
                .previewDevice("iPhone 13")
            
            CustomList<Text>(cinemaName: "ABC Cinema", buttonDestination: {Text("Tehe <3")})
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
        }
    }
}
