//
//  VideoPlayerView.swift
//  AvKit lesson challenge m5
//
//  Created by Stephen Brady on 27/02/2023.
//

import SwiftUI
import AVKit
struct VideoPlayerView: View {
    var body: some View {
        let url = URL(string:Constants.videoHostUrl)
        
        
        
        VideoPlayer(player: AVPlayer(url:url!)).cornerRadius(10)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
