//
//  TextSet.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/7.
//

import SwiftUI

struct TextInterestName: View {
    var name: String
    var body: some View {
        Text(name)
            .font(.system(size: 48 * scale, weight: .bold))
            .foregroundColor(Color("Color#3D3E42"))
    }
}

struct TextInterestLength: View {
    var length: String
    var body: some View {
        Text(length)
            .font(.system(size: 42 * scale, weight: .bold))
            .foregroundColor(Color("Color#3D3E42"))
    }
}

struct TextCardGo: View {
    var body: some View {
        Text("GO")
            .font(.system(size: 60 * scale, weight: .bold))
            .foregroundColor(.white)
            .padding(.bottom, 5)
    }
}


struct TextSet_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            
            TextInterestName(name: testInterest.name)

            TextInterestLength(length: testInterest.length)
            
            TextCardGo()
        }
        .background(.gray)
    }
}
