//
//  ProfileVIew.swift
//  mad_v1.0
//
//  Created by ilham risqi on 04/06/23.
//
import SwiftUI

struct ProfileView: View {
    
    let user: User
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        
        if horizontalSizeClass == .compact{
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    HStack {
                        Image("fotoprofile")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            .shadow(radius: 4)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text(user.name)
                                .font(.title)
                                .bold()
                            
                            Text(user.email)
                                .font(.subheadline)
                        }
                        Spacer()
                        
                    }
                    .padding(.vertical, 40)
                    
                    
                }
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.black)
                .background(.gray)
                
                
                HStack {
                    Spacer()
                    
                    Rectangle()
                        .frame(width: 250, height: 70)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .overlay(
                            HStack {
                                Text("Loyalin")
                                    .foregroundColor(.black)
                                    .font(.headline)
                                    .padding(10)
                                Spacer()
                                
                                Button(action: {
                                    
                                }) {
                                    Spacer()
                                    
                                    HStack{
                                        Text("Langganan")
                                            .foregroundColor(.black)
                                            .font(.subheadline)
                                            .font(.custom("Helvatica", size: 18))
                                            .padding(5)
                                    }
                                    .padding(3)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(Color.black, lineWidth: 1)
                                    )
                                    .shadow(color: .white, radius: 4, x: 0, y: 2)
                                }
                                
                                Spacer()
                            }
                        )
                        .offset(y: -55)
                        .padding(.bottom, -20)
                        .shadow(radius: 5)
                    
                    Spacer()
                }
                
                
                
                
                VStack(alignment: .leading, spacing: 10) {
                    HStack{
                        Text("Ilham Risqi")
                            .font(.headline)
                        
                        Spacer()
                        
                        HStack{
                            Text("Edit")
                                .foregroundColor(.black)
                                .font(.headline)
                                .font(.custom("Helvatica", size: 18))
                                .padding(5)
                        }
                        .padding(.horizontal)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black, lineWidth: 1)
                        )
                        
                        .shadow(color: .white, radius: 4, x: 0, y: 2)
                    }
                    .padding(.horizontal)
                    Divider()
                        .background(Color.black)
                    
                    Spacer()
                    
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack{
                            Text("ilhamrisqir@gmail")
                                .font(.headline)
                            
                            Spacer()
                            
                            HStack{
                                Text("Edit")
                                    .foregroundColor(.black)
                                    .font(.headline)
                                    .font(.custom("Helvatica", size: 18))
                                    .padding(5)
                            }
                            .padding(.horizontal)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                            
                            .shadow(color: .white, radius: 4, x: 0, y: 2)
                        }
                        .padding(.horizontal)
                        Divider()
                            .background(Color.black)
                        
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            HStack{
                                Text("Ilham Risqi")
                                    .font(.headline)
                                
                                Spacer()
                                
                                HStack{
                                    Text("Edit")
                                        .foregroundColor(.black)
                                        .font(.headline)
                                        .font(.custom("Helvatica", size: 18))
                                        .padding(5)
                                }
                                .padding(.horizontal)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.black, lineWidth: 1)
                                )
                                
                                .shadow(color: .white, radius: 4, x: 0, y: 2)
                            }
                            .padding(.horizontal)
                            Divider()
                                .background(Color.black)
                            
                            Spacer()
                            
                        }
                        
                    }
                    
                    
                }
                
                
            }
        }
        else{
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    HStack {
                        Image("fotoprofile")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            .shadow(radius: 4)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text(user.name)
                                .font(.title)
                                .bold()
                            
                            Text(user.email)
                                .font(.subheadline)
                        }
                        Spacer()
                        
                    }
                    .padding(.vertical, 40)
                    
                    
                }
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.black)
                .background(.gray)
                
                
                HStack {
                    Spacer()
                    
                    Rectangle()
                        .frame(width: 600, height: 70)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .overlay(
                            HStack {
                                Text("Loyalin")
                                    .foregroundColor(.black)
                                    .font(.system(size: 30).bold())
                                    .font(.headline)
                                    .padding(10)
                                Spacer()
                                
                                Button(action: {
                                    
                                }) {
                                    Spacer()
                                    
                                    HStack{
                                        Text("Langganan")
                                            .foregroundColor(.black)
                                            .font(.subheadline)
                                            .font(.custom("Helvatica", size: 18))
                                            .padding(5)
                                    }
                                    .padding(3)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(Color.black, lineWidth: 1)
                                    )
                                    .shadow(color: .white, radius: 4, x: 0, y: 2)
                                }
                                
                                Spacer()
                            }
                        )
                        .offset(y: -55)
                        .padding(.bottom, -20)
                        .shadow(radius: 5)
                    
                    Spacer()
                }
                
                
                
                
                VStack(alignment: .leading, spacing: 10) {
                    HStack{
                        Text("Ilham Risqi")
                            .font(.headline)
                        
                        Spacer()
                        
                        HStack{
                            Text("Edit")
                                .foregroundColor(.black)
                                .font(.headline)
                                .font(.custom("Helvatica", size: 18))
                                .padding(5)
                        }
                        .padding(.horizontal)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black, lineWidth: 1)
                        )
                        
                        .shadow(color: .white, radius: 4, x: 0, y: 2)
                    }
                    .padding(.horizontal)
                    Divider()
                        .background(Color.black)
                    
                    Spacer()
                    
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack{
                            Text("ilhamrisqir@gmail")
                                .font(.headline)
                            
                            Spacer()
                            
                            HStack{
                                Text("Edit")
                                    .foregroundColor(.black)
                                    .font(.headline)
                                    .font(.custom("Helvatica", size: 18))
                                    .padding(5)
                            }
                            .padding(.horizontal)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                            
                            .shadow(color: .white, radius: 4, x: 0, y: 2)
                        }
                        .padding(.horizontal)
                        Divider()
                            .background(Color.black)
                        
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            HStack{
                                Text("Ilham Risqi")
                                    .font(.headline)
                                
                                Spacer()
                                
                                HStack{
                                    Text("Edit")
                                        .foregroundColor(.black)
                                        .font(.headline)
                                        .font(.custom("Helvatica", size: 18))
                                        .padding(5)
                                }
                                .padding(.horizontal)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.black, lineWidth: 1)
                                )
                                
                                .shadow(color: .white, radius: 4, x: 0, y: 2)
                            }
                            .padding(.horizontal)
                            Divider()
                                .background(Color.black)
                            
                            Spacer()
                            
                        }
                        
                    }
                    
                    
                }
                
                
            }
        }
        
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.userdummy)
    }
}
