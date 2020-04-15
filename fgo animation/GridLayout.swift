//
//  GridLayout.swift
//  fgo animation
//
//  Created by User12 on 2020/4/15.
//  Copyright © 2020 hunteruf. All rights reserved.
//

import SwiftUI

struct GridLayout: View {
    let names = [["a","b"],["c","d"],["e","f"],["g","h"]]
    var columnCount = 2
    let photoWidth = (UIScreen.main.bounds.size.width - 10) / 2
    var body: some View {
        List{
            ForEach(names.indices){ (row) in
                HStack(spacing:4){
                    ForEach(self.names[row].indices){ (column) in
                        Image(self.names[row][column])
                                .resizable()
                                .scaledToFill()
                                .frame(width: self.photoWidth, height: self.photoWidth)
                                .clipped()
                        
                            }
                        }
                        .listRowInsets(EdgeInsets(top:0,leading:2,bottom: 1,trailing:0))
                    }
                    
        }
}
}
struct GridLayout_Previews: PreviewProvider {
    static var previews: some View {
        GridLayout()
    }
}
