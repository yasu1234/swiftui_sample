//
//  HumanDetail.swift
//  swiftui_sample
//
//  Created by kuma on 2020/08/09.
//  Copyright © 2020 kuma. All rights reserved.
//

import SwiftUI

struct HumanDetail: View {
    var human: Human
    var body: some View {
        VStack {
            Text("名前：" + human.name)
            Text("年齢：" + human.age)
            Text("ID：" + String(human.id))
        }
    }
}

struct HumanDetail_Previews: PreviewProvider {
    static var previews: some View {
        HumanDetail(human: humanData[0])
    }
}
