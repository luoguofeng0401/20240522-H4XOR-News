//
//  DetailView.swift
//  H4XOR News
//
//  Created by Guo-Feng Luo on 2024/5/21.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlstring: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}


