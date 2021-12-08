//
//  BannerView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/7.
//

import SwiftUI



struct BannerView: View {
//    
    var count: Int
    @State var currentIndex = 0
    @State var offset: CGFloat = 0
//    @State var isAnimation = true
    var body: some View {
        VStack {
            Button("搜索框") {
                print("点击搜索框1")
            }
            
            if count == 1 {
                BannerCardBig(type: .route, interest: nil)
                    .padding(56 * scale)

            } else if count > 1 {
                ScrollViewReader { proxy in

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .center, spacing: 76 * scale) {
                            BannerCardSmall(type: .route, interest: nil).id(0)
                            BannerCardSmall(type: .ar, interest: testInterest).id(1)
                            BannerCardSmall(type: .ar, interest: testInterest).id(2)
                            BannerCardSmall(type: .nearby, interest: testInterest).id(3)
                        }
                        .padding(56 * scale)
                    }
                    .disabled(true)
                    .highPriorityGesture(
                        DragGesture()
                            .onChanged{ value in
                                offset = value.translation.width
                            }
                        
                            .onEnded{ value in
                                if value.translation.width > 50 && currentIndex > 0 {
                                    currentIndex -= 1
                                }
                                
                                if value.translation.width < -50 && currentIndex < 3 {
                                    currentIndex += 1
                                }
                                print(currentIndex)
                                let anchor: UnitPoint
                                if currentIndex == 0 || currentIndex == 3 {
                                    anchor = .bottomTrailing
                                } else {
                                    anchor = UnitPoint(x: 0.74, y: 1)
                                }
                                withAnimation {
                                    proxy.scrollTo(currentIndex, anchor: anchor)
                                }
                            }
                    )
                    
                }
            }
            
            Divider()
                .frame(width: 1, height: 1, alignment: .center)
                .foregroundColor(Color("Color#F5F6F7"))
                .padding(.bottom, 34 - 20)
        }
        .background(Color("Color#F5F6F7"))
        .cornerRadius(bannerCornerRadius)
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                Spacer()
                BannerView(count: 2)
            }
            .ignoresSafeArea()
                      .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                      .previewDisplayName("Device - 8")

            VStack {
                Spacer()
                BannerView(count: 2)
            }
            .ignoresSafeArea()
                      .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
                      .previewDisplayName("Device - 12")
                }
        
    }
}
