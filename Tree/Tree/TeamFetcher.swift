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
        do {
            if let path = Bundle.main.path(forResource: "treeResponse", ofType: "json") {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let decodedLists = try JSONDecoder().decode([TeamTreeModel].self, from: data)
                self.team = decodedLists
            } else {
                print("No Data")
            }
        } catch {
            print ("Error")
        }
    }
}
