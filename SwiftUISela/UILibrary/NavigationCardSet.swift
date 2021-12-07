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
struct RoundedHomeCardView: View {
    var interest: Interest
    var body: some View {
        HomeNavigationCardView(interest: testInterest)
            .background(.gray)
            .clipShape(
                RoundedRectangle(cornerRadius: CornerRadius, style: .continuous)
            )
    }
}

struct RoundedUncheckCardView: View {
    var interest: Interest
    var body: some View {
        UncheckNavigationCardView(interest: interest)
            .background(.gray)
            .clipShape(
                RoundedRectangle(cornerRadius: CornerRadius, style: .continuous)
            )
    }
}

struct RoundedCheckedCardView: View {
    var interest: Interest
    var body: some View {
        CheckedNavigationCardView(interest: interest)
            .background(.gray)
            .clipShape(
                RoundedRectangle(cornerRadius: CornerRadius, style: .continuous)
            )
    }
}

struct RoundedOtherCardView: View {
    var interest: Interest
    var body: some View {
        OtherNavigationCardView(interest: interest)
            .background(.gray)
            .clipShape(
                RoundedRectangle(cornerRadius: CornerRadius, style: .continuous)
            )
    }
}

struct RoundedResultCardView: View {
    var interest: Interest
    var body: some View {
        ResultCardView(interest: interest)
            .background(.gray)
            .clipShape(
                RoundedRectangle(cornerRadius: CornerRadius, style: .continuous)
            )
    }
}

struct RoundedCardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            RoundedHomeCardView(interest: testInterest)
            RoundedUncheckCardView(interest: testInterest)
            RoundedCheckedCardView(interest: testInterest)
            RoundedOtherCardView(interest: testInterest)
            RoundedResultCardView(interest: testInterest)
        }
    }
}
