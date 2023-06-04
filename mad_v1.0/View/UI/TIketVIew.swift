//
//  TIketVIew.swift
//  mad_v1.0
//
//  Created by ilham risqi on 04/06/23.
//


import SwiftUI

struct TiketView: View {
    var body: some View {
        
        ZStack {
            Color(red: 33/255, green: 36/255, blue: 44/255)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Your Ticket")
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                
                
                VStack {
                    Image("poster20")
                        .resizable()
                        .frame(width: 250, height: 400)
                        .cornerRadius(25)
                        .shadow(radius: 10)
                }
                .padding(.top)
                HStack {
                    
                    HStack{
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Judul Film")
                                .font(.title)
                                .fontWeight(.bold)
                            Text("Tanggal")
                                .font(.subheadline)
                            Text("Tempat Duduk")
                                .font(.subheadline)
                        }
                        
                        
                        Image("barcode")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                        
                        
                        
                    }
                    
                    .padding(.all)
                    .background(Color(red: 217/255, green: 217/255, blue: 217/255))
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    
                }
                .padding()
                
                Spacer()
            }
            .padding()
        }
    }
}





struct TiketView_Previews: PreviewProvider {
    static var previews: some View {
        TiketView()
    }
}


