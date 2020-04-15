//
//  AppView.swift
//  fgo animation
//
//  Created by User12 on 2020/4/14.
//  Copyright © 2020 hunteruf. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            ContentView().tabItem{
                Image(systemName: "music.house.fill")
                Text("首頁")
            }
            CharacterView().tabItem{
                Image(systemName: "person.fill")
                Text("角色介紹")
            }
            PlotView().tabItem{
                Image(systemName:"play.rectangle.fill")
                Text("劇情簡介")
            }
            GridLayout().tabItem{
                Image(systemName: "person.3.fill")
                Text("照片牆")
            }
            Padoru().tabItem{
                Image(systemName: "info.circle.fill")
                Text("彩蛋")
            }
            
        }.accentColor(.blue)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
