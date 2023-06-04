//
//  DetailVIew.swift
//  mad_v1.0
//
//  Created by ilham risqi on 04/06/23.
//


import SwiftUI


struct DetailView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State private var showReservationAlert = false
    @State private var selectedRectangleIndex: Int?
    var body: some View {
        
        if horizontalSizeClass == .compact{
            VStack {
                Image("poster20")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    HStack {
                        ForEach(0..<5) { _ in
                            Image(systemName: "star.fill")
                                .foregroundColor(.black)
                                .padding(1)
                        }
                        
                        Text("5.0")
                            .font(.headline)
                        
                        Spacer()
                        
                        Text("2h 10m")
                            .font(.headline)
                            .padding(15)
                    }
                    .padding()
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Nama Film")
                                .font(.headline)
                            
                            Text("Sub Nama")
                                .font(.subheadline)
                        }
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    VStack {
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem ut tempus facilisis, odio leo commodo arcu, ut lacinia nunc massa sed risus.")
                            .font(.subheadline)
                            .frame(width: 350, height: 100)
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack(spacing: 10) {
                            ForEach(0..<10) { index in
                                VStack {
                                    Rectangle()
                                    //untuk merubah background warna rectangle menjadi putih pada di tekan
                                        .foregroundColor(selectedRectangleIndex == index ? .white : .black)
                                        .frame(width: 60, height: 80)
                                        .cornerRadius(10)
                                        .padding(.bottom)
                                        .overlay(
                                            VStack {
                                                Text(getDayOfWeek(for: index))
                                                    .font(.headline)
                                                //untuk merubah background warna text menjadi hitam pada di tekan
                                                    .foregroundColor(selectedRectangleIndex == index ? .black : .white)
                                                    .multilineTextAlignment(.center)
                                                
                                                Text(getDate(for: index))
                                                    .font(.headline)
                                                    .foregroundColor(selectedRectangleIndex == index ? .black : .white)
                                                    .multilineTextAlignment(.center)
                                            }
                                                .padding(.bottom)
                                        )
                                        .onTapGesture {
                                            showReservationAlert = true
                                            selectedRectangleIndex = index
                                        }
                                    
                                    Rectangle()
                                    //untuk merubah background warna rectangle menjadi putih pada di tekan
                                        .foregroundColor(selectedRectangleIndex == index ? .white : .black)
                                        .frame(width: 80, height: 40)
                                        .cornerRadius(10)
                                        .overlay(
                                            VStack {
                                                Text(getTime(for: index))
                                                    .font(.headline)
                                                //untuk merubah background warna text menjadi hitam pada di tekan
                                                    .foregroundColor(selectedRectangleIndex == index ? .black : .white)
                                                    .multilineTextAlignment(.center)
                                                
                                            }
                                        )
                                        .onTapGesture {
                                            showReservationAlert = true
                                            selectedRectangleIndex = index
                                            
                                        }
                                    Spacer()
                                }
                                
                                
                            }
                            
                        }
                        
                        .padding(.vertical)
                    }
                    .alert(isPresented: $showReservationAlert, content: {
                        Alert(title: Text("Reservation"), message: nil, primaryButton: .default(Text("Reservation"), action: {
                        }), secondaryButton: .cancel())
                    })
                    .frame(width: 350)
                }
                .frame(width: 400, height: 400)
                .background(Color.white.opacity(0.5))
                .cornerRadius(10)
                .padding()
            }
        }
        
        else{
            VStack {
                Image("poster20")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    HStack {
                        ForEach(0..<5) { _ in
                            Image(systemName: "star.fill")
                                .foregroundColor(.black)
                                .padding(0)
                        }
                        
                        Text("5.0")
                            .font(.headline)
                        
                        Spacer()
                        
                        Text("2h 10m")
                            .font(.system(size: 25).bold())
                            .padding(15)
                    }
                    .padding()
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Nama Film")
                                .font(.system(size: 25).bold())
                                
                            
                            Text("Sub Nama")
                                .font(.subheadline)
                        }
                        .padding(.vertical, -10)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    VStack {
                        ScrollView{
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem ut tempus facilisis, odio leo commodo arcu, ut lacinia nunc massa sed risus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem ut tempus facilisis, odio leo commodo arcu, ut lacinia nunc massa sed risus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem ut tempus facilisis, odio leo commodo arcu, ut lacinia nunc massa sed risus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem ut tempus facilisis, odio leo commodo arcu, ut lacinia nunc massa sed risus.")
                                .font(.subheadline)
                            
                        }
                        .frame(width: 650, height: 100)
                        
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack(spacing: 10) {
                            ForEach(0..<10) { index in
                                VStack {
                                    Rectangle()
                                    //untuk merubah background warna rectangle menjadi putih pada di tekan
                                        .foregroundColor(selectedRectangleIndex == index ? .white : .black)
                                        .frame(width: 60, height: 80)
                                        .cornerRadius(10)
                                        .padding(.bottom)
                                        .overlay(
                                            VStack {
                                                Text(getDayOfWeek(for: index))
                                                    .font(.headline)
                                                //untuk merubah background warna text menjadi hitam pada di tekan
                                                    .foregroundColor(selectedRectangleIndex == index ? .black : .white)
                                                    .multilineTextAlignment(.center)
                                                
                                                Text(getDate(for: index))
                                                    .font(.headline)
                                                    .foregroundColor(selectedRectangleIndex == index ? .black : .white)
                                                    .multilineTextAlignment(.center)
                                            }
                                                .padding(.bottom)
                                        )
                                        .onTapGesture {
                                            showReservationAlert = true
                                            selectedRectangleIndex = index
                                        }
                                    
                                    Rectangle()
                                    //untuk merubah background warna rectangle menjadi putih pada di tekan
                                        .foregroundColor(selectedRectangleIndex == index ? .white : .black)
                                        .frame(width: 80, height: 40)
                                        .cornerRadius(10)
                                        .overlay(
                                            VStack {
                                                Text(getTime(for: index))
                                                    .font(.headline)
                                                //untuk merubah background warna text menjadi hitam pada di tekan
                                                    .foregroundColor(selectedRectangleIndex == index ? .black : .white)
                                                    .multilineTextAlignment(.center)
                                                
                                            }
                                        )
                                        .onTapGesture {
                                            showReservationAlert = true
                                            selectedRectangleIndex = index
                                            
                                        }
                                    Spacer()
                                }
                                
                                
                            }
                            
                        }
                        
                        .padding(.vertical)
                    }
                    .alert(isPresented: $showReservationAlert, content: {
                        Alert(title: Text("Reservation"), message: nil, primaryButton: .default(Text("Reservation"), action: {
                        }), secondaryButton: .cancel())
                    }
                    )
                    .frame(width: 630)
                }
                .frame(width: 800, height: 500)
                .background(Color.white.opacity(0.5))
                .cornerRadius(10)
                .padding()
            }
        }
        
        
    }
    
    
    //untuk random harinya
    func getDayOfWeek(for index: Int) -> String {
        let daysOfWeek = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
        return daysOfWeek[index % daysOfWeek.count]
    }
    
    //untuk random waktunya
    func getTime(for index: Int) -> String {
        let times = ["10:00", "12:30", "15:45", "18:00", "20:15"]
        return times[index % times.count]
    }
    
    //untuk random tanggalnya
    func getDate(for index: Int) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd"
        
        let startDate = Date()
        let calendar = Calendar.current
        let date = calendar.date(byAdding: .day, value: index, to: startDate)
        
        return dateFormatter.string(from: date!)
    }
    
    
    
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

