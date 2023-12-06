//
//  ContentView.swift
//  32. SwiftUI
//
//  Created by ani kvitsiani on 06.12.23.
//

import SwiftUI

struct ContentView: View {
    
    @State var nameField: String = ""
    @State var emailField: String = ""
    @State var passwordField: String = ""
    @State var dateField: String = ""
    @State var countryField: String = ""
    
    var body: some View {
        
        VStack{
        HStack {
            

            Image("Arrow_back")
                .frame(width: 30, height: 30, alignment: .leading)
                .padding(.leading, 24)
                
            Spacer()
            
            Text("Edit Profile")
                .font(
                    Font.custom("Inter", size: 20)
                        .weight(.heavy)
                )
                .foregroundColor(.black)
                
            
            Spacer()
            
            //ვერ გავასწორე ეს ცენტრში, toolbar-იც ვცადე, მაგრამ ვერ გავაკეთე მაინც....
            
                
                
        }
        .padding(.bottom, 23)

            ZStack {
                Image("Image")
                    .frame(width: 165, height: 170)
                
                Image("Oval")
                .frame(width: 171.47099, height: 175.97391)
                
                Image("Camera")
                .frame(width: 32, height: 32)
                .padding(.leading, 150)
                .padding(.top, 90)
                
            }

}


            
            VStack  (spacing: 11) {
                Text("Name")
                    .font(
                        Font.custom("Inter", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
              
                
                TextField("name", text: $nameField)
                
                    .background(Color.white.cornerRadius(10))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.bottom, 15)
                
                

                Text("Email")
                    .font(
                        Font.custom("Inter", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                TextField("test@gmail.com", text: $emailField)
                
                    .background(Color.white.cornerRadius(10))
                    .foregroundColor(.black)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    .padding(.bottom, 15)
                
                Text("Password")
                    .font(
                        Font.custom("Inter", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
               
                TextField("*********", text: $passwordField)
                
                    .background(Color.white.cornerRadius(10))
                    .foregroundColor(.black)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    .padding(.bottom, 15)
                
                
                Text("Date of Birth")
                    .font(
                        Font.custom("Inter", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
            
                
                TextField("31/02/2000", text: $dateField)
                
                    .background(Color.white.cornerRadius(10))
                    .foregroundColor(.black)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    .padding(.bottom, 15)
                
                
                Text("Country/Region")
                    .font(
                        Font.custom("Inter", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
             
                
                
                TextField("Georgia", text: $countryField)
                
                    .background(Color.white.cornerRadius(10))
                    .foregroundColor(.black)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    .padding(.bottom, 29)
                
                
                Button("Save changes"){
                }
                .font(
                    Font.custom("Inter", size: 20)
                        .weight(.medium)
                    
                )
                .foregroundColor(.white)
                .frame(width: 221, height: 45, alignment: .center)
                .background(Color(red: 0.14, green: 0.15, blue: 0.38))
                .cornerRadius(6)
                
                
                
            }
            
            
            
            .padding(.leading, 24)
            .padding(.trailing, 24)
            
            
            
            
        }
    }


#Preview {
    ContentView()
}
