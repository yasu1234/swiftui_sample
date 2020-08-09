//
//  HumanList.swift
//  swiftui_sample
//
//  Created by kuma on 2020/08/08.
//  Copyright © 2020 kuma. All rights reserved.
//

import SwiftUI

struct HumanList: View {
    var body: some View {
        NavigationView {
            List(humanData) {human in
                NavigationLink(destination: HumanDetail()) {
                    HumanRow(human:human)
                }
            }
            .navigationBarTitle(Text("Human"))
        }
    }
}

struct HumanList_Previews: PreviewProvider {
    static var previews: some View {
        HumanList()
    }
}
