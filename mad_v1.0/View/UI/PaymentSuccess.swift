//
//  PaymentSuccess.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 06/06/23.
//

import SwiftUI

struct PaymentSuccess: View {
    @State private var shouldAnimate = false
    
    var body: some View {
        VStack {
            CheckAnimation()
            
            Text("Payment Success!")
                .fontWeight(.bold)
        }
        .frame(width: shouldAnimate ? 400 : 200, height: shouldAnimate ? 400 : 200)
        .onAppear{
            shouldAnimate = true
        }
    }
    
}


struct PaymentSuccess_Previews: PreviewProvider {
    static var previews: some View {
        PaymentSuccess()
    }
}
