//
//  CharadetailView.swift
//  fgo animation
//
//  Created by User12 on 2020/4/14.
//  Copyright © 2020 hunteruf. All rights reserved.
//

import SwiftUI

struct CharadetailView: View {
    var Char : characters
    var body: some View {
        ScrollView{
        VStack{
            Image(Char.name+"b")
                .resizable()
                .frame(width:300, height:400)
            
            Text("角色介紹:")
                .font(.title)
            Spacer()
            Text(Char.introduce)
                .padding()
                .font(.title)
                .multilineTextAlignment(.leading)
                .navigationBarTitle(Char.name)
        }
    }
}
}

struct CharadetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharadetailView(Char:Everyone[0])
    }
}
