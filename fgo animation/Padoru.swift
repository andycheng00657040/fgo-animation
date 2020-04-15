//
//  Padoru.swift
//  fgo animation
//
//  Created by User12 on 2020/4/15.
//  Copyright © 2020 hunteruf. All rights reserved.
//

import SwiftUI
import AVFoundation

struct Padoru: View {
    let player = AVPlayer()
    @State private var rotateDegree: Double = 0
    var body: some View {
        ZStack{
            
            Image("background")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
        VStack{
            Button("padorupadoru") {
                self.rotateDegree = 360
                let fileUrl=Bundle.main.url(forResource:"Padoru_Padoru_[Original]_Fate_Extra",withExtension: "mp4")!
                let playerItem = AVPlayerItem(url: fileUrl)
                self.player.replaceCurrentItem(with: playerItem)
                self.player.play()
            }
            .font(.title)
            .offset(x:0,y:-50)
            Image("padoru")
            .font(.title)
            .offset(x:0,y:+50)
            .rotationEffect(.degrees(rotateDegree))
            .animation(Animation.linear(duration: 3)
            .repeatCount(4, autoreverses: false)
            )
            }
            
        }
    }
}
struct Padoru_Previews: PreviewProvider {
    static var previews: some View {
        Padoru()
    }
}
