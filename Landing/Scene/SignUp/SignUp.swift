//
//  SignUp.swift
//  Landing
//
//  Created by Tuğberk Can Özen on 14.10.2022.
//

import SwiftUI

struct SignUp: View {
    @State var userName = ""
    @State var password = ""
    var social = ["twitter", "facebook", "google"]
    
    var body: some View {
        VStack {
            HStack {
                Text("Hesap Oluştur")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }.padding(.horizontal, 30)
                .padding(.top, 30)
            // MARK: - Kullanıcı adı
            VStack(alignment: .leading, spacing: 15) {
                Text("Kullanıcı adı")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .font(.system(size: 15))
                    
                TextField("Email Adresi", text: $userName)
                    .padding()
                    .background(.white)
                    .cornerRadius(5)
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: .black.opacity(0.08), radius: 5, x: 0, y: -5)
                
                Text("Parola")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .font(.system(size: 15))
                
                TextField("Parolanız", text: $password)
                    .padding()
                    .background(.white)
                    .cornerRadius(5)
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: .black.opacity(0.08), radius: 5, x: 0, y: -5)
                
            }.padding(.horizontal, 25)
                .padding(.top, 25)
            
            
            Button(action: {}) {
                Text("Kayıt Ol")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("Renk1"), Color("Renk2")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    
                    .cornerRadius(5)
            }.padding(.horizontal, 25)
                .padding(.top, 25)
            
            // MARK: - Social Media Buttons
            Button(action: {}) {
                HStack {
                    Image(systemName: "faceid")
                        .font(.system(size: 26))
                        .foregroundColor(Color("Renk1"))
                        
                    Text("Face ID ile kaydol")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    Spacer()
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("Renk1"), lineWidth: 1))
            }.padding(.top, 35)
                .padding(.horizontal, 35)
            
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
            
        }// Vstack bitiş
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
