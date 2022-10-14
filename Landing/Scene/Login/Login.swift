//
//  Login.swift
//  Landing
//
//  Created by Tuğberk Can Özen on 14.10.2022.
//

import SwiftUI

struct Login: View {
    @State var password = ""
    var social = ["twitter", "facebook", "google"]
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Tekrar Merhaba 🥳").fontWeight(.bold)
                    Text("Tuğberk").font(.title).fontWeight(.bold)
                    Button(action: {}) {
                        Text("Bu ben değilim")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(Color("Renk1"))
                    }

                }
                Spacer(minLength: 0)
                
                Image("kisi")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 85, height: 85)
                    .clipShape(Circle())
                
            } /// HStack bitişi
            .padding(.horizontal, 25)
            .padding(.top, 30)
            
            VStack(alignment: .leading, spacing: 15) {
                Text("Parola")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                TextField("Parola", text: $password)
                    .padding()
                    .background(.white)
                    .cornerRadius(5)
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: .black.opacity(0.08), radius: 5, x: 0, y: -5)
                
                Button(action: {}) {
                    Text("Parolamı unuttum")
                        .fontWeight(.bold)
                        .font(.system(size: 15))
                        .foregroundColor(Color("Renk1"))
                }.padding(.top, 10)
            }.padding(.horizontal, 25)
                .padding(.top, 25)
            
            //MARK: - Login Button Design
            Button(action: {}) {
                Text("Oturum aç")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color("Renk1"), Color("Renk2")]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(10)
            }.padding(.horizontal, 25)
                .padding(.top, 10)
            
            // MARK: - Social Media Buttons
            Button(action: {}) {
                HStack {
                    Image(systemName: "faceid")
                        .font(.system(size: 26))
                        .foregroundColor(Color("Renk1"))
                        
                    Text("Face ID ile oturum aç")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    Spacer()
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("Renk1"), lineWidth: 1))
            }.padding(.top, 35)
                .padding(.horizontal, 25)
            
            HStack(spacing: 30) {
                ForEach(social, id: \.self) { name in
                    Button(action: {}) {
                        Image(name).renderingMode(.original)
                            .resizable()
                            .frame(width: 25, height: 25)
//                            .foregroundColor(Color(name == "google" ? "Renk2" : "Renk1"))
                           
                    }
                }
            } .padding(.top, 25)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
