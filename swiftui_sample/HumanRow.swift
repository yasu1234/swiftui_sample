//
//  HumanRow.swift
//  swiftui_sample
//
//  Created by kuma on 2020/08/02.
//  Copyright © 2020 kuma. All rights reserved.
//

import SwiftUI

struct HumanRow: View {
    
    var human: Human
    
    var body: some View {
        HStack {
            Text(human.name)
            Text(human.extra.blood)
            
            Spacer()
            
            if human.isFavorite {
                Image(systemName: "star.fill")
            }
        }
    }
}

struct HumanRow_Previews: PreviewProvider {
    static var previews: some View {
        HumanRow(human: humanData[1])
    }
}
