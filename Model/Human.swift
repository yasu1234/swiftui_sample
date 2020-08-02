//
//  Human.swift
//  swiftui_sample
//
//  Created by kuma on 2020/08/02.
//  Copyright © 2020 kuma. All rights reserved.
//

import SwiftUI

struct Human: Hashable, Codable {
    var id: Int
    var name: String
    var age: String
    var city: String
    var sex: String
    var extra: Extra
}

struct Extra: Hashable, Codable {
    var blood: String
    var hand: String
}

