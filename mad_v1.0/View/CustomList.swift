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
        
        VStack {
            
            Button(action: {}) {
                NavigationLink(
                    destination: Text(cinemaName),
                    label: {
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
                    })
            }
            
        }
        .padding(.horizontal)
        
        
    }
}

struct CustomList_Previews: PreviewProvider {
    static var previews: some View {
        CustomList(cinemaName: "ABC Cinema")
    }
}
