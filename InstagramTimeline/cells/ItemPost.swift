//
//  ItemPost.swift
//  InstagramTimeline
//
//  Created by Зехниддин on 21/01/21.
//

import SwiftUI

struct ItemPost: View {
    var user_url = "im_user"
    var user_name = "John"
    var img_url1 = "image1"
    var img_url2 = "image2"
    var img_url3 = "image3"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Image(user_url)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                
                Text(user_name)
                    .fontWeight(.semibold)
                    .font(.system(size: 16))
                
                Text("follow")
                    .fontWeight(.semibold)
                    .foregroundColor(.red)
                    .font(.system(size: 16))
                
                Spacer()
                
                Image(systemName: "location")
                    .font(.title3)
            }
            
            VStack(spacing: 2) {
                
                HStack(spacing: 2) {
                    Image(img_url1)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width / 2 + 2, height: 230)
                        .clipped()
                    
                    
                    Image(img_url2)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width / 2 + 2, height: 230)
                        .clipped()
                }
                
                Image(img_url3)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 230)
                    .clipped()
            }
            .padding(.horizontal, -16)
            
            HStack {
                Image("ic_like")
                Image("ic_comment")
                Image("ic_reply")
                
                Spacer()
                
                Image("ic_bookmark")
            }
            .padding(.vertical, 6)
            
            Text("Lorem Ipsum is simply dummy")
                .fontWeight(.medium)
                .padding(.bottom, 6)
                .lineLimit(2)
            Text("It has survived not only five centuries, but also")
                .lineLimit(4)
                .foregroundColor(.init(white: 0.2))
        }
        .padding(.horizontal, 16)
    }
}

struct ItemPost_Previews: PreviewProvider {
    static var previews: some View {
        ItemPost()
    }
}
