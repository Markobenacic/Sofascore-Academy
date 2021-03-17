//
//  ImageOverlay.swift
//  SofascoreDZ1
//
//  Created by sofalocal on 16.03.2021..
//

import SwiftUI

struct ImageOverlay: View {
    var imageTitle: Text
    
    var body: some View {
        ZStack{
            imageTitle
                .font(.largeTitle)
                .padding(6)
                .foregroundColor(.white)
            
        }.background(Color.black)
        .opacity(0.7)
        .cornerRadius(8)
        .padding(6)
    }
}

struct ImageOverlay_Previews: PreviewProvider {
    static var previews: some View {
        ImageOverlay(imageTitle: Text("Image title"))
    }
}
