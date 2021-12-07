//
//  ImageSet.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/7.
//

import SwiftUI

struct ImageGo: View {
    var body: some View {
        Image("go").resizable().frame(width: 164 * scale, height: 164 * scale)
    }
}

struct ImageUncheck: View {
    var imageName: String
    var body: some View {
        Image(imageName).resizable().frame(width: 204 * scale, height: 204 * scale)
            .clipShape(Circle())
            .padding(.leading, 72 * scale)
            .padding(.trailing, 38 * scale)
    }
}

struct ImageChecked: View {
    var imageName: String
    var body: some View {
        ZStack {
            Image("photoBG").resizable().frame(width: 228 * scale, height: 180 * scale)
                .padding(.leading, 54 * scale)
                .padding(.trailing, 28 * scale)
            Image(imageName).resizable().scaledToFill().frame(width: 204 * scale, height: 204 * scale)
                .clipShape(RoundedRectangle(cornerRadius: CornerRadius, style: .continuous))
                .padding(.leading, 54 * scale)
                .padding(.trailing, 52 * scale)
        }
    }
}

struct ImageOther: View {
    var imageName: String
    var body: some View {
        ZStack {
            Image("photoBG2").resizable().frame(width: 222 * scale, height: 204 * scale)
                .padding(.leading, 54 * scale)
                .padding(.trailing, 34 * scale)
            Image(imageName).resizable().frame(width: 204 * scale, height: 204 * scale)
                .clipShape(Circle())
                .padding(.leading, 54 * scale)
                .padding(.trailing, 52 * scale)
        }
    }
}



struct ImageSet_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ImageGo()
            ImageUncheck(imageName: testInterest.imageUrl)
            ImageChecked(imageName: testInterest.imageUrl)
            ImageOther(imageName: testInterest.imageUrl)
        }
    }
}
