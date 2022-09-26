//
//  HumanList.swift
//  swiftui_sample
//
//  Created by kuma on 2020/08/08.
//  Copyright © 2020 kuma. All rights reserved.
//

import SwiftUI

struct HumanList: View {
    @EnvironmentObject var modelData: HumanModel
    @State var showOBloodOnly = false
    
    var filteredHumans: [Human] {
        modelData.humanData.filter { human in
            (!showOBloodOnly || human.extra.blood == "O")
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: self.$showOBloodOnly) {
                    Text("O型のみ表示")
                }
                ForEach(filteredHumans) {human in
                    NavigationLink(destination: HumanDetail(human: human)) {
                        HumanRow(human:human)
                    }
                }
            }
            .navigationBarTitle(Text("Human"))
        }
    }
}

struct HumanList_Previews: PreviewProvider {
    static var previews: some View {
        HumanList().environmentObject(HumanModel())
    }
}
