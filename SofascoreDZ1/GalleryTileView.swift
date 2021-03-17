//
//  GalleryTileView.swift
//  SofascoreDZ1
//
//  Created by sofalocal on 16.03.2021..
//

import SwiftUI

struct GalleryTileView: View {
    var image: Image
    var imageTitle: Text
    var body: some View {
        image.resizable()
           // .aspectRatio(contentMode: .fit)
           // .scaledToFit()
            .overlay(ImageOverlay(imageTitle: imageTitle), alignment: .topLeading)
            .border(Color.black)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 350)
            .cornerRadius(10)
    }
}

struct GalleryTileView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryTileView(image: Image("fc-barcelona"), imageTitle: Text("Barcelona"))
    }
}
