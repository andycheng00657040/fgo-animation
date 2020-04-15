//
//  BabyloniaView.swift
//  fgo animation
//
//  Created by User12 on 2020/4/14.
//  Copyright © 2020 hunteruf. All rights reserved.
//

import SwiftUI

struct BabyloniaView: View {
        var body: some View {
            VStack{
                NavigationView{
                           List {
                               ForEach(0..<Babylonia.count){
                                   (index) in
                                   NavigationLink(destination: CharadetailView(Char: Babylonia[index])){
                                       CharacterRow(Char: Babylonia[index])
                                       }
                               }
                           }
                }.navigationBarTitle("巴比倫尼亞")
            }
    }
}

struct BabyloniaView_Previews: PreviewProvider {
    static var previews: some View {
        BabyloniaView()
    }
}
