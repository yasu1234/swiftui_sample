//
//  IconImageView.swift
//  swiftui_sample
//
//  Created by kuma on 2020/07/28.
//  Copyright © 2020 kuma. All rights reserved.
//

import SwiftUI

struct IconImageView: View {
    var body: some View {
        Image("Icon")
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.blue, lineWidth: 4))
            .shadow(radius: 10)
            .frame(width: 300, height: 300)
    }
}

struct IconImageView_Previews: PreviewProvider {
    static var previews: some View {
        IconImageView()
    }
}
