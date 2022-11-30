//
//  ContentView.swift
//  M5_L10_Task6
//
//  Created by Bekhruz Hakmirzaev on 30/11/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.yellow, .pink]), startPoint: .top, endPoint: .bottom)
            VStack(spacing: 20){
                Spacer()
                HStack{
                    Image(systemName: "person").foregroundColor(.white)
                    TextField("Enter your email", text: $email)
                }.padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 1))
                HStack{
                    Image(systemName: "lock").foregroundColor(.white)
                    SecureField("Enter your password", text: $password)
                }.padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 1))
                Button(action: {}, label: {
                    Text("Login").foregroundColor(.white).padding()
                }).frame(maxWidth: .infinity)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 1))
                Spacer()
                Text("All rights reserved").foregroundColor(.white).padding()
            }.padding(.leading, 10).padding(.trailing, 10)
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
