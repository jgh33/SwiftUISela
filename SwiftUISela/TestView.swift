//
//  TestView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/8.
//

import SwiftUI

struct TestView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView {
            TextField("Search Destination...", text: $searchText)
        }
        .searchable(text: $searchText, placement: SearchFieldPlacement.automatic) {
            Text("hello word")
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
