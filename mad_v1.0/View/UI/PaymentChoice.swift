//
//  PaymentChoice.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 06/06/23.
//

import SwiftUI

struct PaymentChoice: View {
    var body: some View {
        VStack {
            Text("Choose your payment:")
            
            NavigationLink {
                PaymentSuccess()
            } label: {
                Image("gopay_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 100)
                    .cornerRadius(20)
            }
            
            NavigationLink {
                PaymentSuccess()
            } label: {
                Image("ovo_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 100)
                    .cornerRadius(20)
            }
        }
        
    }
}

struct PaymentChoice_Previews: PreviewProvider {
    static var previews: some View {
        PaymentChoice()
    }
}
