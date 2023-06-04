//
//  SeatGridView.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 04/06/23.
//

import SwiftUI

struct SeatGridView: View {
    let columns = 1...9
    let rows = ["A", "B", "C", "D", "E"]
    
    var body: some View {
        VStack(spacing: 10) {
            ForEach(rows, id: \.self) { row in
                HStack(spacing: 10) {
                    ForEach(columns, id: \.self) { column in
                        SeatView(column: column, row: row)
                    }
                }
            }
        }
        .padding()
    }
}


struct SeatView: View {
    @State private var buttonColor: Color = .white
    let column: Int
    let row: String
    
    var body: some View {
        Button(action: {
            // Add your button action here
            if buttonColor == .green{
                buttonColor = .white
            }else if buttonColor == .white{
                buttonColor = .green
            }
        }) {
            HStack {
                Image(systemName: "chair.lounge.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(buttonColor)
                
            }
//            .padding()
            .foregroundColor(.white)
//            .background(Color.blue)
            .cornerRadius(10)
        }
        //        Image(systemName: "chair.lounge.fill")
        //            .resizable()
        //            .aspectRatio(contentMode: .fit)
        //            .frame(width: 30, height: 30)
        //            .foregroundColor(Color.black)
        //        Text("\(column)\(row)")
        //            .frame(width: 30, height: 30)
        //            .background(Color.blue)
        //            .foregroundColor(.white)
    }
}

struct SeatGridView_Previews: PreviewProvider {
    static var previews: some View {
        SeatGridView()
    }
}
