//
//  CustomList.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 04/06/23.
//

import SwiftUI

struct CustomList: View {
    let cinemaName: String
    
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
                    NavigationLink(destination: Text(cinemaName)) {
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
                    NavigationLink(destination: Text(cinemaName)) {
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
            CustomList(cinemaName: "ABC Cinema")
                .previewDevice("iPhone 13")
            
            CustomList(cinemaName: "ABC Cinema")
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
        }
    }
}
