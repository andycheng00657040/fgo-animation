//
//  ServantView.swift
//  fgo animation
//
//  Created by User12 on 2020/4/14.
//  Copyright © 2020 hunteruf. All rights reserved.
//

import SwiftUI

struct ServantView: View {
    
        var body: some View {
            VStack{
                NavigationView{
                           List {
                               ForEach(0..<Servant.count){
                                   (index) in
                                   NavigationLink(destination: CharadetailView(Char: Servant[index])){
                                       CharacterRow(Char:
                                        Servant[index])
                                       }
                               }
                           }
                }.navigationBarTitle("從者")
            }
           
    }
}

struct ServantView_Previews: PreviewProvider {
    static var previews: some View {
        ServantView()
    }
}
