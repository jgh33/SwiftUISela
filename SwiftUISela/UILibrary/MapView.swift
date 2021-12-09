//
//  MapView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/9.
//

import SwiftUI

struct MapView: View {
    @State var offset = CGPoint(x: 0, y: 0)
//    @GestureState private var scale: CGFloat = 0.5

    let minScale: CGFloat = 0.2
    let maxScale: CGFloat = 0.6
    let rawFrame: CGSize = CGSize(width: 8500, height: 5387)
    @State var isSmall = true
    var body: some View {
        
        ScrollView([.vertical, .horizontal]) {
            Image("CF")
//                .resizable()
                .frame(width: rawFrame.width * (isSmall ? minScale : maxScale), height: rawFrame.height * (isSmall ? minScale : maxScale), alignment: .center)
                .scaleEffect(isSmall ? minScale : maxScale)
                
        }
        .ignoresSafeArea()
        .frame(width: screenW, height: screenH, alignment: .bottomLeading)
//        .gesture(
//            MagnificationGesture()
//                .updating($scale, body: { (value, scale, trans) in
//                    if value > maxScale {
//                        scale = maxScale
//                    } else if value < minScale {
//                        scale = minScale
//                    } else {
//                        scale = value
//                    }
//
//                })
//        )
        
        .onTapGesture(count: 2) {
            withAnimation {
                isSmall.toggle()
            }
        }


    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
