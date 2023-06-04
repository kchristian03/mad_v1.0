//
//  DetailVIew.swift
//  mad_v1.0
//
//  Created by ilham risqi on 04/06/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
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
                
                ScrollView(.horizontal, showsIndicators: true) { // Menggunakan ScrollView(.horizontal, showsIndicators: true)
                    HStack(spacing: 10) {
                        ForEach(0..<10) { _ in
                            VStack {
                                Rectangle()
                                    .frame(width: 60, height: 80)
                                    .cornerRadius(10)
                                    .padding(.bottom)
                                Rectangle()
                                    .frame(width: 80, height: 40)
                                    .cornerRadius(10)
                            }
                        }
                    }
                    .padding(.vertical)
                }
                .frame(width: 350)
            }
            .frame(width: 400, height: 400)
            .background(Color.white.opacity(0.5))
            .cornerRadius(10)
            .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
