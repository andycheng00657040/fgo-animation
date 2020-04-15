//
//  ContentView.swift
//  fgo animation
//
//  Created by User12 on 2020/4/14.
//  Copyright © 2020 hunteruf. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("「向前邁進吧，為了取回屬於我們的未來」").font(.system(size:30)).fontWeight(.heavy)
            ZStack{
                Image("main")
                .resizable()
                
            }
        }
        .foregroundColor(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
