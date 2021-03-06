//
//  HomeNavigationCardView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/7.
//

import SwiftUI

struct HomeNavigationCardView: View {
    var interest: Interest
    var body: some View {
        HStack(spacing: 0) {
            ResultCardContent(interest: interest)
            
            Spacer()
            
            CloseAndGoView()
        }
        .frame(width: 960 * scale, height: 312 * scale, alignment: .leading)
        .background()
        .clipShape(RoundedRectangle(cornerRadius: CornerRadius, style: .continuous))
        .shadow(color: .gray, radius: 5, x: 0, y: 0)
    }
}

struct HomeNavigationCardView_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavigationCardView(interest: testInterest)
    }
}
