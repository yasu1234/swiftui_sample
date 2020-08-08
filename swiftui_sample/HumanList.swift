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
        List(humanData, id: \.id) {human in
            HumanRow(human:human)
        }
    }
}

struct HumanList_Previews: PreviewProvider {
    static var previews: some View {
        HumanList()
    }
}
