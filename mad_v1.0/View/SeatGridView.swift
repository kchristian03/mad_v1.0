//
//  SeatGridView.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 04/06/23.
//

import SwiftUI

struct SelectedSeat: Hashable, Identifiable {
    var column: String
    var row: Int
    var id: String {
        "\(column)\(row)"
    }
}

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
    
    @State var selectedSeats: [SelectedSeat] = []
    
    var body: some View {
        VStack {
            LazyVGrid(columns: gridLayout(), spacing: 10) {
                ForEach(rows, id: \.self) { row in
                    ForEach(columns.indices, id: \.self) { index in
                        SeaterView(column: columns[index], row: row, status: seatStatuses[row-1][index], selectedSeats: $selectedSeats)
                            .opacity(columns[index] == "_" ? 0 : 1)
                    }
                }
            }
            .padding()
//            Text("Selected Seats: \(selectedSeats.count)")
//                .font(.headline)
//                .padding()
//            ForEach(selectedSeats) { seating in
//                Text(seating.id)
//            }
        }
        
        
    }
    
    private func gridLayout() -> [GridItem] {
        Array(repeating: GridItem(.flexible(), spacing: 10), count: columns.count)
    }
}

struct SeaterView: View {
    @State private var buttonColor: Color = Color(#colorLiteral(red: 0.85, green: 0.85, blue: 0.85, alpha: 1))
    let column: String
    let row: Int
    let status: SeatStatus
    @Binding var selectedSeats: [SelectedSeat]
    
    var body: some View {
        Button(action: {
            if status == .available {
                buttonColor = buttonColor == Color(#colorLiteral(red: 0.85, green: 0.85, blue: 0.85, alpha: 1)) ? .green : Color(#colorLiteral(red: 0.85, green: 0.85, blue: 0.85, alpha: 1))
                if let index = selectedSeats.firstIndex(where: { $0.column == column && $0.row == row }) {
                    selectedSeats.remove(at: index) // Deselect the seat
                } else {
                    selectedSeats.append(SelectedSeat(column: column, row: row))
                }
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

enum SeatStatus {
    case reserved
    case available
    case null
}

struct SeatGridView_Previews: PreviewProvider {
    static var previews: some View {
        SeatGridView()
    }
}
