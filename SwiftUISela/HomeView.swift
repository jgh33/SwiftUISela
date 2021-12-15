//
//  HomeView.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/15.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: -20) {
            MapView()
            BannerView(count: 2)
        }
        .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
