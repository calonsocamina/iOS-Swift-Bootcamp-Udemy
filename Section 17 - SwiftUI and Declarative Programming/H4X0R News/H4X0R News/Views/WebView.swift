//
//  WebView.swift
//  H4X0R News
//
//  Created by Carlos Alonso Camiña on 16/4/25.
//

import Foundation
import WebKit
import SwiftUI

struct webView: UIViewRepresentable {
    
    var urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
