//
//  CheckAnimation.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 06/06/23.
//

import SwiftUI

struct CheckAnimation: View {
    @State private var shouldAnimate = false
    
    var body: some View {        VStack {
        ZStack {
            Circle()
                .fill(.green)
                .frame(width: shouldAnimate ? 200 : 100, height: shouldAnimate ? 200 : 100)
                .animation(.easeInOut(duration: 1.0))
                .onAppear {
                    shouldAnimate = true
                }
            
            if shouldAnimate {
                Image(systemName: "checkmark")
                    .font(.system(size: 100, weight: .bold))
                    .foregroundColor(.white)
                    .offset(y: 8)
            }
        }
        .onAppear {
            shouldAnimate = true
        }
    }
    }
}

struct CheckAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CheckAnimation()
    }
}
