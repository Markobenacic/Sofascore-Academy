//
//  SquareImage.swift
//  SofascoreDZ1
//
//  Created by sofalocal on 16.03.2021..
//

import SwiftUI

struct SquareImage: View {
    var image: Image
    var body: some View {
        image.clipShape(Rectangle())
            .overlay(Rectangle().stroke(Color.white, lineWidth: 4))
    }
}

struct SquareImage_Previews: PreviewProvider {
    static var previews: some View {
        SquareImage(image: Image("fc-barcelona"))
    }
}
