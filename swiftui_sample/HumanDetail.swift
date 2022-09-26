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
    @State private var isShowOkAlert = false
    @Environment(\.presentationMode) var presentation: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Text("名前：" + human.name)
            Text("年齢：" + human.age)
            Text("ID：" + String(human.id))
            
            Button(action: {
                self.isShowOkAlert = true
                
            }) {
            Text("戻る")
            }
            .alert(isPresented: $isShowOkAlert) { () -> Alert in
                let alert: Alert =
                Alert(title: Text("前の画面に戻る"),
                      message: Text("前の画面に戻りますか？"),
                      primaryButton: .default(Text("OK"),
                        action: {
                            self.presentation.wrappedValue.dismiss()
                        }), secondaryButton: .cancel())
                return alert
            }
        }
    }
}

struct HumanDetail_Previews: PreviewProvider {
    static var previews: some View {
        HumanDetail(human: HumanModel().humanData[0])
    }
}
