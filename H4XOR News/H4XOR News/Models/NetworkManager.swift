//
//  NetworkManager.swift
//  H4XOR News
//
//  Created by Guo-Feng Luo on 2024/5/21.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fechData(){
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let saveData = data {
                        do{
                            let results = try decoder.decode(Results.self, from: saveData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                        
                    }
                    
                }
            }
            task.resume()
        }
    }
}
