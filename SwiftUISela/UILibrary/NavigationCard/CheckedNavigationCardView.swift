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
        .background()
        .clipShape(RoundedRectangle(cornerRadius: CornerRadius, style: .continuous))
        .shadow(color: .gray, radius: 5, x: 0, y: 5)
    }
}

struct CheckedNavigationCardView_Previews: PreviewProvider {
    static var previews: some View {
        CheckedNavigationCardView(interest: testInterest)
    }
}
