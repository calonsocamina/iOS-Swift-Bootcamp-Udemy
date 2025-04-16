//
//  DetailView.swift
//  H4X0R News
//
//  Created by Carlos Alonso Camiña on 16/4/25.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        webView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}

