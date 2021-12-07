//
//  RoundedCardView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/7.
//

import SwiftUI

enum CardTtpe {
    case home, checked, uncheck, other
}





struct RoundedCardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HomeNavigationCardView(interest: testInterest)
            UncheckNavigationCardView(interest: testInterest)
            CheckedNavigationCardView(interest: testInterest)
            OtherNavigationCardView(interest: testInterest)
            ResultCardView(interest: testInterest)
        }
    }
}
