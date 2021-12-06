//
//  CircleImageView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/6.
//

import SwiftUI

struct CircleImageView: View {
    var imageName: String
    var diameter: CGFloat = 204 * scale
    var body: some View {
        Image(imageName).resizable().frame(width: diameter, height: diameter)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(imageName: "66cups")
    }
}
