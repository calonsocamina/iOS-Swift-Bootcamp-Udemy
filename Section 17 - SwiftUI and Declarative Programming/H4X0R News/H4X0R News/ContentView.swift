//
//  ContentView.swift
//  H4X0R News
//
//  Created by Carlos Alonso Camiña on 16/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("H4X0R News")
        }
    }
}

#Preview {
    ContentView()
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Hola"),
    Post(id: "3", title: "Ola")
]
