//
//  TiketView.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 05/06/23.
//

import SwiftUI

struct TiketView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        
        
        if horizontalSizeClass == .compact{
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
        else{
            ZStack {
                Color(red: 33/255, green: 36/255, blue: 44/255)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Your Ticket")
                        .font(.system(size: 50).bold())
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                    
                    
                    VStack {
                        Image("poster20")
                            .resizable()
                            .frame(width: 500, height: 800)
                            .cornerRadius(25)
                            .shadow(radius: 10)
                    }
                    .padding(.top)
                    HStack {
                        HStack{
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Judul Film")
                                    .font(.system(size: 50).bold())
                                    .fontWeight(.bold)
                                Text("Tanggal")
                                    .font(.system(size: 25).bold())
                                Text("Tempat Duduk")
                                    .font(.system(size: 25).bold())
                                
                            }
                            .frame(width: 350, height: 250)
                            
                            
                            Image("barcode")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200, height: 200)
                                .cornerRadius(10)
                            
                            
                            
                        }
                        
                        .background(Color(red: 217/255, green: 217/255, blue: 217/255))
                        .cornerRadius(10)
                        .shadow(radius: 10)
                        
                        
                        
                    }
                    .padding()
                }
                
            }
        }
        
        
    }
}





struct TiketView_Previews: PreviewProvider {
    static var previews: some View {
        TiketView()
    }
}
