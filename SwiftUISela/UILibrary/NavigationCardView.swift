//
//  NavigationCardView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/6.
//

import SwiftUI

struct NavigationCardView: View {
    
    var interest: Interest
    var body: some View {
        HStack(spacing: 0) {
            CircleImageView(imageName:interest.imageUrl)
                .padding(.leading, 72 * scale)
                .padding(.trailing, 38 * scale)
            VStack(alignment: .leading, spacing: 20 * scale) {
                Text(interest.name).font(.body).bold()
                Text(interest.length).font(.body).bold()
            }
            Spacer()
            VStack(alignment:.trailing) {
                Button(action: {
                    print("click close")
                }) {
                    Image("close").resizable()
                }
                .frame(width: 100 * scale, height: 100 * scale)
                
                Spacer()
                
                Button(action: {
                    print("click go")
                }) {
                    ZStack {
                        Image("go").resizable().frame(width: 132 * scale, height: 132 * scale)
                        Text("GO").font(.body).bold().foregroundColor(.white).frame(width: 89 * scale, height: 72 * scale, alignment: .center)
                    }
                    
                }.frame(width: 132 * scale, height: 132 * scale)
                
//                Link()
            }
            .padding(.trailing, 38 * scale)
            .padding([.top, .bottom], 42 * scale)
        }
        .frame(width: 960 * scale, height: 312 * scale, alignment: .leading)
    }
}

struct NavigationCardView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationCardView(interest: testInterest).background(.gray)
    }
}
