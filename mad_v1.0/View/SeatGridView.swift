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
    let seatStatuses: [[SeatStatus]] = [
        [.available, .available, .reserved, .available, .available, .reserved, .null, .reserved, .available, .reserved],
        [.reserved, .reserved, .available, .available, .available, .available, .null, .available, .reserved, .reserved],
        [.available, .available, .available, .available, .reserved, .available, .null, .reserved, .available, .reserved],
        [.available, .reserved, .reserved, .available, .available, .available, .null, .available, .available, .reserved],
        [.available, .available, .available, .reserved, .available, .reserved, .null, .available, .available, .reserved]
        ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridLayout(), spacing: 10) {
                ForEach(rows, id: \.self) { row in
                    ForEach(columns.indices, id: \.self) { index in
                        SeaterView(column: columns[index], row: row, status: seatStatuses[row-1][index])
                            .opacity(columns[index] == "_" ? 0 : 1)
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

enum SeatStatus {
    case reserved
    case available
    case null
}

struct SeaterView: View {
    @State private var buttonColor: Color = .white
    let column: String
    let row: Int
    let status: SeatStatus
    
    var body: some View {
        Button(action: {
            // Add your button action here
            if status == .available {
                buttonColor = buttonColor == .white ? .green : .white
            } else if status == .reserved {
                buttonColor = .red
            }
        }) {
            VStack {
                Image(systemName: "chair.lounge.fill")
                    .font(.headline)
                Text("\(column)\(row)")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .foregroundColor(status == .available ? buttonColor : Color.red)
        }
        .disabled(status == .reserved)
        
    }
}

struct SeatGridView_Previews: PreviewProvider {
    static var previews: some View {
        SeatGridView()
    }
}
