//
//  authView.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 04/06/23.
//

import SwiftUI
import AuthenticationServices

struct authView: View {
//    let button = ASAuthorizationAppleIDButton(authorizationButtonType: .continue,
//authorizationButtonStyle: .black)
    var body: some View {
        ZStack{
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            VStack {
                Group{
                    
//                    button.cornerRadius = 10
                }.frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
    }
    
    
    
 
}

struct authView_Previews: PreviewProvider {
    static var previews: some View {
        authView()
    }
}


