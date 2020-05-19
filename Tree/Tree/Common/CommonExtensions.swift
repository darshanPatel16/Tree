//
//  CommonExtensions.swift
//  Tree
//
//  Created by Darshan on 19/05/20.
//  Copyright © 2020 Kiprosh. All rights reserved.
//

import Foundation
import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
