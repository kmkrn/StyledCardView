//
//  ContentView.swift
//  CardView
//
//  Created by denpazakura on 10/05/2021.
//

import SwiftUI

struct MinimalStyleContentView: View {
    private let dataProvider: DataProvider = DataProvider(bundle: .main)
    
    @State private var images = [UnsplashImage]()

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 5) {
                ForEach(dataProvider.minimalStyleImages(), id: \.self) { image in
                    CardView(image: image, style: .minimalistic)
                }
            }
        }
        .padding([.top, .horizontal])
    }
}

struct MinimalStyleContentView_Previews: PreviewProvider {
    static var previews: some View {
        MinimalStyleContentView()
    }
}
