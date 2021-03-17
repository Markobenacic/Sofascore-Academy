//
//  itemTileView.swift
//  SofascoreDZ1
//
//  Created by sofalocal on 16.03.2021..
//

import SwiftUI

struct ItemTileView: View {
    var image: Image
    var text1: Text
    var text2: Text
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            image.resizable()
                .frame(width:100, height:100)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
            text1
            text2
        }.font(.body)
        .padding()
        .shadow(radius: 5)
        .background(Color(UIColor.quaternarySystemFill))
        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black,lineWidth: 0.5))
    }
}

struct ItemTileView_Previews: PreviewProvider {
    static var previews: some View {
        ItemTileView(image: Image("fc-barcelona"), text1: Text("bladwakawdklawdl1"), text2: Text("bla2blalablablwallaw"))
    }
}
