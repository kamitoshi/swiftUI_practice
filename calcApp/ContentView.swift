//
//  ContentView.swift
//  calcApp
//
//  Created by Toshiki Kamiya on 2020/07/06.
//  Copyright © 2020 Toshiki Kamiya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("株式会社　bim")
                .font(.title)
            HStack {
                Text("アイデアを形にする会社")
                    .font(.subheadline)
                Spacer()
                Text("")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
