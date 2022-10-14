//
//  Home.swift
//  Landing
//
//  Created by Tuğberk Can Özen on 14.10.2022.
//

import SwiftUI

struct Home: View {
    @State var index = 0
    @Namespace var name
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
            
            HStack(spacing: 0) {
                
                Button(action: {
                    
                    withAnimation(.spring()){
                        index = 0
                    }
                    
                }) {
                    
                    VStack {
                        Text("Giriş Yap")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 0 ? .black : .gray)
                        ZStack {
                            Capsule()
                                .fill(Color.black.opacity(0.04))
                                .frame(height: 5)
                            if index == 0 {
                                Capsule()
                                    .fill(Color("Renk1"))
                                    .frame(height: 5)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                }
                
                Button(action: {
                    
                    withAnimation(.spring()){
                        index = 1
                    }
                    
                }) {
                
                VStack {
                    Text("Kayıt Ol")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(index == 1 ? .black : .gray)
                    ZStack {
                        Capsule()
                            .fill(Color.black.opacity(0.04))
                            .frame(height: 5)
                        if index == 1 {
                            Capsule()
                                .fill(Color("Renk1"))
                                .frame(height: 5)
                                .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                }
            }.padding(.top, 30)
            
            if index == 0 {
                Login()
            } else {
                SignUp()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
