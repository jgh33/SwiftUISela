//
//  ContentView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            RoundedHomeCardView(interest: testInterest)
            RoundedUncheckCardView(interest: testInterest)
            RoundedCheckedCardView(interest: testInterest)
            RoundedOtherCardView(interest: testInterest)
            RoundedResultCardView(interest: testInterest)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
