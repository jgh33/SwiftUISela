//
//  CheckedNavigationCardView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/6.
//

import SwiftUI

struct CheckedNavigationCardView: View {
    var interest: Interest
    var body: some View {
        HStack(spacing: 0) {
            ImageChecked(imageName: interest.imageUrl)
            
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

struct CheckedNavigationCardView_Previews: PreviewProvider {
    static var previews: some View {
        CheckedNavigationCardView(interest: testInterest)
            .background(.green)
            .clipShape(RoundedRectangle(cornerRadius: 312 * scale / 4, style: .continuous))

    }
}
