//
//  TeamFetcher.swift
//  tree demo
//
//  Created by Mamta on 12/05/20.
//  Copyright © 2020 Kiprosh. All rights reserved.
//

import Foundation

public class TeamFetcher: ObservableObject {
    @Published var team = [TeamTreeModel]()
    
    init(){
        load()
    }
    
    func load() {
//        URLSession.shared.dataTask(with: url) {(data,response,error) in
            do {
                if let path = Bundle.main.path(forResource: "treeResponse", ofType: "json") {
                    let d = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                    let decodedLists = try JSONDecoder().decode([TeamTreeModel].self, from: d)
                    DispatchQueue.main.async {
                        self.team = decodedLists
                        print(decodedLists)
                    }
                }else {
                    print("No Data")
                }
            } catch {
                print ("Error")
            }
            
//        }.resume()
         
    }
}
