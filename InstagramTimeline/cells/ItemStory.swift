//
//  ItemStory.swift
//  InstagramTimeline
//
//  Created by Зехниддин on 21/01/21.
//

import SwiftUI

struct ItemStory: View {
    var img_url: String = "im_user"
    var name: String = "John"
    
    var body: some View {
        VStack(spacing: 4) {
            Image(img_url)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 2)
                )
            Text(name)
                .font(Font.system(size: 15))
        }
        .padding(.trailing, 10)
    }
}

struct ItemStory_Previews: PreviewProvider {
    static var previews: some View {
        ItemStory()
    }
}
