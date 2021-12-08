//
//  SearchView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/8.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String = ""
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                ZStack(alignment: .leading) {
                    Image("serchbar").resizable()
                    TextField("Search Destination...", text: $searchText)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .font(.system(size: 42 * scale, weight: .regular))
                        .foregroundColor(Color("Color#3D3E42"))
                        .padding(.leading, 120 * scale)
                }
                Button("Search") {
                    print("Search action")
                }
                .foregroundColor(Color("Color#355DA1"))
            
            }
            .frame(height: 96 * scale)
            .padding()

            
//            List {
//                ForEach () {
//
//                }
//            }
        }
        .background(Color("Color#F5F6F7"))
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
