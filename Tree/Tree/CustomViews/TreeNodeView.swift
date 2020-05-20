//
//  TreeNodeView.swift
//  Tree
//
//  Created by Darshan on 19/05/20.
//  Copyright © 2020 Kiprosh. All rights reserved.
//

import SwiftUI

struct TreeNodeView: View {
    
    var name = String()
    var teamCount = Int()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .center) {
                Spacer()
                Image("userPic")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50, alignment: .center)
                Spacer()
            }.padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
            Text(name)
                .fixedSize(horizontal: false, vertical: true)
                .font(.headline)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 20, trailing: 10))
                .lineLimit(nil)
                .frame(width: 150, height: nil, alignment: .center)
            if teamCount > 0 {
                Button(action: {
                    print("test button action")
                }) {
                    HStack {
                        Text("\(teamCount)").font(.title).fontWeight(.bold)
                            .foregroundColor(.white).padding()
                        Spacer()
                        Image("downArrow")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25, alignment: .center)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 15))
                    }.aspectRatio(contentMode: .fill)
                     .background(Color.blue)
                }.cornerRadius(8, corners: [.bottomLeft, .bottomRight])
            }
        }.aspectRatio(contentMode: .fit)
         .frame(width: 150, height: nil, alignment: .center)
         .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 2))
    }
}

struct TreeNodeView_Previews: PreviewProvider {
    static var previews: some View {
        TreeNodeView(name: "Slawomir Testing account", teamCount: 3)
    }
}
