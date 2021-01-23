//
//  AddStory.swift
//  InstagramTimeline
//
//  Created by Зехниддин on 22/01/21.
//

import SwiftUI

struct AddStory: View {
    var body: some View {
        VStack(spacing: 4) {
            ZStack(alignment: .bottomTrailing) {
                Image("im_user")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                Image("ic_add")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
            }
            Text("George")
                .font(Font.system(size: 15))
        }
        .padding(.trailing, 10)
    }
}


struct AddStory_Previews: PreviewProvider {
    static var previews: some View {
        AddStory()
    }
}
