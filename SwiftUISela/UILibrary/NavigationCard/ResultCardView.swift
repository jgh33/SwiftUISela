//
//  ResultCardView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/7.
//

import SwiftUI

struct ResultCardView: View {
    var interest: Interest
    var body: some View {
        ResultCardContent(interest: interest)
            .frame(width: 960 * scale, height: 274 * scale, alignment: .leading)
            .background()
            .clipShape(RoundedRectangle(cornerRadius: CornerRadius, style: .continuous))
            .shadow(color: .gray, radius: 5, x: 0, y: 5)
    }
}

struct ResultCardContent: View {
    var interest: Interest
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(interest.name)
                .font(.system(size: 48*scale, weight: .bold))
                .padding(.bottom, 10 * scale)
            if (interest.erea == .none) {
                Text(interest.length).font(.system(size: 42*scale, weight: .medium))
            } else {
                Text(interest.length + " - " + interest.erea.rawValue).font(.system(size: 42*scale, weight: .medium))
            }
            
            HStack {
                if (interest.waitingTime > 0) {
                    Text(interest.waitingTime.description).font(.system(size: 60 * scale, weight: .bold))
                    Text("min Waiting").font(.system(size: 24 * scale)).padding(.trailing, 20)
                }
                if(interest.isCripple) {
                    Image("cripple").resizable().frame(width: 48 * scale, height: 48 * scale)
                    Text("Available for the Disabled").font(.system(size: 24 * scale))
                }
            }
            .foregroundColor(Color("Color#355DA1FF"))
            .padding(.top, 14 * scale)
        }
        .padding(.leading, 60 * scale)
    }
}

struct ResultCardView_Previews: PreviewProvider {
    static var previews: some View {
        ResultCardView(interest: testInterest)
    }
}
