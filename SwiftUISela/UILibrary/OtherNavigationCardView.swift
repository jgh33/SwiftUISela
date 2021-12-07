//
//  OtherNavigationCardView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/7.
//

import SwiftUI

struct OtherNavigationCardView: View {
    var interest: Interest
    var body: some View {
        HStack(spacing: 0) {
            ImageOther(imageName: interest.imageUrl)
            
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

struct OtherNavigationCardView_Previews: PreviewProvider {
    static var previews: some View {
        OtherNavigationCardView(interest: testInterest)
    }
}
