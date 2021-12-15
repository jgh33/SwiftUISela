//
//  BubbleView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/15.
//

import SwiftUI

struct BubbleView: View {
    var interest: Interest
    @State var isSelected: Bool = false
    var body: some View {
        VStack {
            if(interest.isCripple || (interest.isWaiting && interest.waitingTime >= 1)) {
                ZStack {
                    Image("Bubble_BG_Big").resizable().frame(width: 236 * scale, height: 222 * scale)
                    VStack(spacing: 14) {
                        Text(interest.name).font(.system(size: 24 * scale, weight: .bold))
                        HStack {
                            if interest.isWaiting && interest.waitingTime >= 1 {
                                VStack {
                                    Text(String(interest.waitingTime)).font(.system(size: 60 * scale, weight: .bold))
                                    Text("min waiting").font(.system(size: 18 * scale, weight: .bold))
                                }
                            }
                            
                            if interest.isCripple {
                                Image("Bubble_Cripple").resizable().frame(width: 72 * scale, height: 72 * scale)
                            }
                        }
                    }
                    .foregroundColor(.white)
                }
            } else {
                ZStack {
                    Image("Bubble_BG").resizable().frame(width: 236 * scale, height: 108 * scale)
                    Text(interest.name).font(.system(size: 24 * scale, weight: .bold)).foregroundColor(.white).offset(y: -3)
                }
            }
            
            Image("bubble_circle").resizable().frame(width: 36 * scale, height: 36 * scale)
        }
//        .background()
//        .shadow(color: .gray, radius: 5, x: 0, y: 10)
    }
}

struct BubbleView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            BubbleView(interest: testInterest)
            BubbleView(interest: testInterest1)
        }
    }
}
