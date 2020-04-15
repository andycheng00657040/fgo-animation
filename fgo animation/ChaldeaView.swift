//
//  ChaldeaView.swift
//  fgo animation
//
//  Created by User12 on 2020/4/14.
//  Copyright © 2020 hunteruf. All rights reserved.
//

import SwiftUI

struct ChaldeaView: View {
        var body: some View {
            VStack{
                NavigationView{
                           List {
                               ForEach(0..<Chaldea.count){
                                   (index) in
                                   NavigationLink(destination: CharadetailView(Char: Chaldea[index])){
                                       CharacterRow(Char: Chaldea[index])
                                       }
                               }
                           }
                }.navigationBarTitle("迦勒底")
            }

    }
}

struct ChaldeaView_Previews: PreviewProvider {
    static var previews: some View {
        ChaldeaView()
    }
}
