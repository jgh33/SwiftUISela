//
//  MapView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/9.
//

import SwiftUI

struct MapView: View {
    @State var offset = CGPoint(x: 0, y: 0)
    @GestureState private var scale:CGFloat = 0.2
    
    var body: some View {
        Image("CF")
//                .resizable().scaledToFit()
            .frame(width: screenW, height: screenH, alignment: .bottomLeading)
//            .scaleEffect(scale)
            .gesture(
                MagnificationGesture()
                    .updating($scale, body: { (value, scale, trans) in
                        if value > 0.6 {
                            scale = 0.6
                        } else if value < 0.2 {
                            scale = 0.2
                        } else {
                            scale = value
                        }
                                
                    })
            )
//            .onDrag {
//                <#code#>
//            }


    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
