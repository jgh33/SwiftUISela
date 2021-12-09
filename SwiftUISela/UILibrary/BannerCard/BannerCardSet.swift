//
//  BannerCardSet.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/7.
//

import SwiftUI
enum BannerCardType {
    case route, ar, nearby
}
struct BannerCard: View {
    var type: BannerCardType
    var interest: Interest?
    var body: some View {
        HStack(spacing: 0) {
            if type == .route {
                ImageUncheck(imageName: "routeIcon")
                VStack(alignment: .leading, spacing: 20 * scale) {
                    TextInterestName(name: "Must-experience Metaverse Route")
                    TextInterestLength(length: "Virtual Space and Real Fun in BLVD")
                }
            } else {
                ImageUncheck(imageName: interest!.imageUrl)
                VStack(alignment: .leading, spacing: 20 * scale) {
                    TextInterestName(name: interest!.name)
                    TextInterestLength(length: interest!.length)
                }
            }
            
            Spacer()
            
        }
    }
}

struct BannerCardSmall: View {
    var type: BannerCardType
    var interest: Interest?
    var body: some View {
        BannerCard(type: type, interest: interest)
            .frame(width: 840 * scale, height: 312 * scale)
            .background()
            .clipShape(
                RoundedRectangle(cornerRadius: CornerRadius, style: .continuous)
            )
            .shadow(color: .gray, radius: 5, x: 0, y: 0)

    }
}

struct BannerCardBig: View {
    var type: BannerCardType
    var interest: Interest?
    var body: some View {
        BannerCard(type: type, interest: interest)
            .frame(width: 960 * scale, height: 312 * scale)
            .background()
            .clipShape(
                RoundedRectangle(cornerRadius: CornerRadius, style: .continuous)
            )
            .shadow(color: .gray, radius: 5, x: 0, y: 0)
    }
}

struct BannerCardSet_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            BannerCardSmall(type: .route)
            BannerCardSmall(type: .ar, interest: testInterest)
            BannerCardSmall(type: .nearby, interest: testInterest)
            BannerCardBig(type: .route, interest: testInterest)
        }
    }
}
