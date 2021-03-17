//
//  HomeworkView.swift
//  SofascoreDZ1
//
//  Created by sofalocal on 16.03.2021..
//

import SwiftUI

struct HomeworkView: View {
    
    private var columns: [GridItem] = [GridItem(spacing:16)]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(0..<100){ index in
                        if(index % 2 == 0){
                            HStack{
                                ItemTileView(image: Image("puppies\(index%10)"), text1: Text("vau vau"), text2: Text("Grrrrrrrrrrrrrrrrrrrrr!"))
                                ItemTileView(image: Image("puppies\(index%10+1)"), text1: Text("woof woof"), text2: Text("grrrrrrrrrrrrrrrrrrr!"))
                            }
                        }else{
                            GalleryTileView(image: Image("puppies\(index%10)"), imageTitle: Text("Puppies\(index)"))
                        }
                        
                    }
                }
            }.padding()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image("puppies-icon")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Text("Puppies").font(.headline)
                    }
                }
            })
        }
        
    }
}

struct HomeworkView_Previews: PreviewProvider {
    static var previews: some View {
        HomeworkView()
    }
}
