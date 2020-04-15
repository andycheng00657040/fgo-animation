//
//  PlotView.swift
//  fgo animation
//
//  Created by User12 on 2020/4/15.
//  Copyright © 2020 hunteruf. All rights reserved.
//

import SwiftUI

struct PlotView: View {
    var body: some View {
        NavigationView {
            List{
                Group{
                ForEach(0..<Plot.count){ (index) in
                    NavigationLink(destination:PlotdetailView(Ep: Plot[index])){
                            PlotRow(Ep: Plot[index])
                        }
                    }
                }
            }
            .navigationBarTitle(Text("劇情簡介"), displayMode: .inline)
            
        }
    }
}

struct PlotView_Previews: PreviewProvider {
    static var previews: some View {
        PlotView()
    }
}
