//
//  ContentView.swift
//  swiftui_sample
//
//  Created by kuma on 2020/07/26.
//  Copyright © 2020 kuma. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 8){
            Text("Hello World")
                .font(.largeTitle)
                .fixedSize(horizontal: true, vertical: false)
                .frame(width: 100)
            Text("Hello World2")
                .font(.title)
            Text("Hello World3")
                .font(.headline)
            Text("Hello World4")
                .font(.subheadline)
                .foregroundColor(.red)
            Text("Hello World5")
                .font(.body)
            Text("Hello World6")
                .font(.footnote)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
