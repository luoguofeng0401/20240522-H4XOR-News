//
//  ContentView.swift
//  H4XOR News
//
//  Created by Guo-Feng Luo on 2024/5/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                
            }
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear{
            self.networkManager.fechData()
        }
    }
}

#Preview {
    ContentView()
}


