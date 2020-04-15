//
//  CharacterRow.swift
//  fgo animation
//
//  Created by User12 on 2020/4/14.
//  Copyright © 2020 hunteruf. All rights reserved.
//

import SwiftUI

struct CharacterRow: View {
    var Char : characters
    var body: some View {
        HStack(spacing:50){
        Image(Char.name+"a")
            .resizable()
            .scaledToFill()
            .frame(width:100,height:100)
            .clipped()
            .overlay(Circle().stroke(Color.white, lineWidth: 1))
            .shadow(radius: 10)
        VStack(alignment: .leading){
            Text(Char.name)
            
            Text("cv:"+Char.cv)
            
        }
        Spacer()
        
    }
}
}
struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(Char: Everyone[0])
        .previewLayout(.fixed(width: 300, height: 100))
    }
}
