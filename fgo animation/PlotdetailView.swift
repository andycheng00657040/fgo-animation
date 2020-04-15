//
//  PlotdetailView.swift
//  fgo animation
//
//  Created by User12 on 2020/4/15.
//  Copyright © 2020 hunteruf. All rights reserved.
//

import SwiftUI

struct PlotdetailView: View {
    var Ep : episode
    var body: some View {
        ScrollView{
            VStack{
                Image(Ep.Num)
                    .resizable()
                    .scaledToFill()
                    .padding()
                    .frame(width:415, height:330)
                Spacer()
                Text(Ep.Plot)
                    .padding(.bottom)
                    .font(.title)
                    .multilineTextAlignment(.leading)
                Spacer(minLength:30)
                
            }
            .navigationBarTitle("第"+Ep.Num+"集")
        }
    }
}

struct PlotdetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlotdetailView(Ep: Plot[2] )
    }
}
