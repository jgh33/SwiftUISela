//
//  UncheckNavigationCardView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/6.
//

import SwiftUI

struct UncheckNavigationCardView: View {
    
    var interest: Interest
    var body: some View {
        HStack(spacing: 0) {
            ImageUncheck(imageName: interest.imageUrl)
            
            VStack(alignment: .leading, spacing: 20 * scale) {
                TextInterestName(name: interest.name)
                TextInterestLength(length: interest.length)
            }
            
            Spacer()
            
            CloseAndGoView()
        }
        .frame(width: 960 * scale, height: 312 * scale, alignment: .leading)
    }
}

struct UncheckNavigationCardView_Previews: PreviewProvider {
    static var previews: some View {
        UncheckNavigationCardView(interest: testInterest).background(.green)        .clipShape(RoundedRectangle(cornerRadius: CornerRadius, style: .continuous))
    }
}

struct CloseAndGoView: View {
    var body: some View {
        VStack(alignment:.trailing) {
            ButtonCloseSmall()
            Spacer()
            ButtonGo()
            
        }
        .padding(.bottom, 42 * scale)
    }
}
