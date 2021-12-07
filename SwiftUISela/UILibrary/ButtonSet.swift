//
//  ButtonSet.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/7.
//

import SwiftUI

struct ButtonGo: View {
    var body: some View {
        Button(action: {
            print("click go")
        }) {
            ZStack {
                ImageGo()
                TextCardGo()
            }
        }
        .padding(.trailing, 30 * scale)
//        .frame(width: 164 * scale, height: 164 * scale)
    }
}


struct ButtonCloseSmall: View {
    var body: some View {
        Button(action: {
            print("click close")
        }) {
            Image("close").resizable().frame(width: 100 * scale, height: 100 * scale)
        }
        
    }
}



struct ButtonSet_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ButtonCloseSmall()
            ButtonGo()
        }.background(.gray)
    }
}
