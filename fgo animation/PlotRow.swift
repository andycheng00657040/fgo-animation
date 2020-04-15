//
//  PlotRow.swift
//  fgo animation
//
//  Created by User12 on 2020/4/15.
//  Copyright © 2020 hunteruf. All rights reserved.
//

import SwiftUI

struct PlotRow: View {
    var Ep : episode
    var body: some View {
        HStack{
            Image(Ep.Num)
                .resizable()
                .scaledToFill()
                .frame(width:200,height:150)
                .clipped()
            VStack(alignment: .leading){
                Text("第"+Ep.Num+"集")
                .foregroundColor(.black)
                .font(.system(size:24))
                .padding()
                Text(Ep.Plot)
                .font(.system(size:24))
                .padding()
                .foregroundColor(.black)
            }
            Spacer()
        }
        .frame(width:380,height:150)
        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
        .cornerRadius(20)
    }
}

struct PlotRow_Previews: PreviewProvider {
    static var previews: some View {
        PlotRow(Ep: Plot[1])
        .previewLayout(.fixed(width: 380, height: 150))
    }
}
