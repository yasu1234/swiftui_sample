//
//  HumanList.swift
//  swiftui_sample
//
//  Created by kuma on 2020/08/08.
//  Copyright © 2020 kuma. All rights reserved.
//

import SwiftUI

struct HumanList: View {
    @State var showOBloodOnly = false
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: self.$showOBloodOnly) {
                    Text("O型のみ表示")
                }
                ForEach(humanData) {human in
                    if !self.showOBloodOnly ||
                        human.extra.blood == "O" {
                        NavigationLink(destination: HumanDetail(human: human)) {
                            HumanRow(human:human)
                        }
                    }
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
