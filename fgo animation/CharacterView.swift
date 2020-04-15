//
//  CharacterView.swift
//  fgo animation
//
//  Created by User12 on 2020/4/14.
//  Copyright © 2020 hunteruf. All rights reserved.
//

import SwiftUI

struct CharacterView: View {
    var body: some View {
    
        NavigationView{
        
            List {
                Section(header:Text("英靈的絆禮裝")){
                ScrollView(.horizontal){
                HStack(spacing: 10){
                    ForEach(0 ..< Servant.count) { (index) in
                        NavigationLink(destination: CharadetailView(Char:Servant[index])){
                        Image(Servant[index].name+"絆")
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150)
                                .clipped()
                        }
                    }
                }.frame(height: 150)
                }
            }
                Section(header:Text("登場人物")){
                    ForEach(0..<Everyone.count){
                        (index) in
                        NavigationLink(destination: CharadetailView(Char: Everyone[index])){
                            CharacterRow(Char: Everyone[index])
                            }
                    }
                }

                }
            .navigationBarTitle(Text("人物介紹"), displayMode: .inline)
    }
}
}
struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}


