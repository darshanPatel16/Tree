//
//  ContentView.swift
//  Tree
//
//  Created by Darshan on 19/05/20.
//  Copyright © 2020 Kiprosh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
//    @ObservedObject var fetch = TeamFetcher()
    
    var body: some View {
        
//        List(fetch.team) { todo in
//            VStack(alignment: .leading) {
//                Text(todo.firstName!)
//            }
//        }
//
        TreeNodeView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
