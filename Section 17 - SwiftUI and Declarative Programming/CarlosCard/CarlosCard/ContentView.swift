//
//  ContentView.swift
//  CarlosCard
//
//  Created by Carlos Alonso Camiña on 15/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Ejemplo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5.0)
                        
                    )
                Text("Carlos Alonso Camiña")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+34 111 22 33 44", imageName: "phone.fill")
                InfoView(text: "carlos@email.com", imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}

