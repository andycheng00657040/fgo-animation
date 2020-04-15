//
//  GoddessView.swift
//  fgo animation
//
//  Created by User12 on 2020/4/14.
//  Copyright © 2020 hunteruf. All rights reserved.
//

import SwiftUI

struct GoddessView: View {
        var body: some View {
            VStack{
                NavigationView{
                           List {
                               ForEach(0..<Goddess.count){
                                   (index) in
                                   NavigationLink(destination: CharadetailView(Char: Goddess[index])){
                                       CharacterRow(Char: Goddess[index])
                                       }
                               }
                           }
                }.navigationBarTitle("迦勒底")
            }
    }
}

struct GoddessView_Previews: PreviewProvider {
    static var previews: some View {
        GoddessView()
    }
}
