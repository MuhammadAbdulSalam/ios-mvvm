//
//  ContentView.swift
//  Shared
//
//  Created by adb_salam on 12/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = "username"
    @State private var password = "password"

    var body: some View {
        VStack(alignment: .center, spacing: 10){
            
            Spacer()
            
            Image("main-logo")
                .resizable()
                .frame(width: 150, height: 150)
            
            TextField( "username",text: $username)
               .textInputAutocapitalization(.never)
               .disableAutocorrection(true)
               .frame(height: 40)
               .textFieldStyle(.roundedBorder)


            TextField( "password", text: $password)
               .textInputAutocapitalization(.never)
               .disableAutocorrection(true)
               .frame(height: 40)
               .textFieldStyle(.roundedBorder)

            
            Button("sign-in"){
                print("sign-in clicked")
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.top, 10)
            
            
            Spacer()
            
            Button("forgotten details? "){
                print("forgotten details clicked")
            }
            
        }.padding(.all, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
