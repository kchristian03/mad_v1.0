//
//  ScheduleComponent.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 06/06/23.
//

import SwiftUI

struct ScheduleComponent: View {
    
    var jam : String
    var jam2 : String
    var jam3 : String
    var jam4 : String
    
    var body: some View {
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            iPadLayout
        } else {
            iPhoneLayout
        }
    }
    
    @ViewBuilder
    var iPadLayout: some View {
        
        HStack {
            
            Spacer()
            
            Text(jam)
                .frame(width: 120, height: 56)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                )
            
            Spacer()
            
            Text(jam2)
                .frame(width: 120, height: 56)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                )
            
            Spacer()
            
            Text(jam3)
                .frame(width: 120, height: 56)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                )
            
            Spacer()
            
            Text(jam4)
                .frame(width: 120, height: 56)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                )
            
            Spacer()
            
        }
        .padding(.bottom)
        .padding(.horizontal)
        
    }
    
    @ViewBuilder
    var iPhoneLayout: some View {
        
        HStack {
            
            Text(jam)
                .frame(width: 80, height: 39)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                )
            
            Text(jam2)
                .frame(width: 80, height: 39)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                )
            
            Text(jam3)
                .frame(width: 80, height: 39)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                )
            
            Text(jam4)
                .frame(width: 80, height: 39)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                )
            
        }
        .padding(.bottom)
        
    }
    
}

struct ScheduleComponent_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ScheduleComponent(jam: "10:00", jam2: "10:30", jam3: "12:00", jam4: "12:40")
                .previewDevice("iPhone 13")

            ScheduleComponent(jam: "10:00", jam2: "10:30", jam3: "12:00", jam4: "12:40")
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
        }
    }
}

