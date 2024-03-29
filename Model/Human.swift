//
//  Human.swift
//  swiftui_sample
//
//  Created by kuma on 2020/08/02.
//  Copyright © 2020 kuma. All rights reserved.
//

import SwiftUI

struct Human: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var age: String
    var city: String
    var sex: String
    var extra: Extra
    var isFavorite = false
}

struct Extra: Hashable, Codable {
    var blood: String
    var hand: String
}

