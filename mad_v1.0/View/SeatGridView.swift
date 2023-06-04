//
//  SeatGridView.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 04/06/23.
//

import SwiftUI

struct SeatGridView: View {
    let columns = ["A", "B", "C", "D", "E", "F", "_", "G", "H", "I"]
    let rows = 1...5
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridLayout(), spacing: 10) {
                ForEach(rows, id: \.self) { row in
                    ForEach(columns, id: \.self) { column in
                        SeaterView(column: column, row: row)
                            .opacity(column == "_" ? 0 : 1)
                    }
                }
            }
            .padding()
        }
    }
    
    private func gridLayout() -> [GridItem] {
        Array(repeating: GridItem(.flexible(), spacing: 10), count: columns.count)
    }
}

struct SeaterView: View {
    @State private var buttonColor: Color = .white
    let column: String
    let row: Int
    
    var body: some View {
        Button(action: {
            // Add your button action here
            if buttonColor == .green{
                buttonColor = .white
            }else if buttonColor == .white{
                buttonColor = .green
            }
        }) {
            VStack {
                Image(systemName: "chair.lounge.fill")
                    .font(.headline)
                Text("\(column)\(row)")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .foregroundColor(buttonColor)
        }
        
    }
}

struct SeatGridView_Previews: PreviewProvider {
    static var previews: some View {
        SeatGridView()
    }
}
