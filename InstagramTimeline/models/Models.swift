//
//  Models.swift
//  InstagramTimeline
//
//  Created by Зехниддин on 23/01/21.
//

import Foundation

struct ItemStoryModel: Identifiable {
    let id = UUID()
    let name: String
    let image_url: String
}

struct ItemPostModel: Identifiable {
    let id = UUID()
    let user_url: String
    let user_name: String
    let img_url1: String
    let img_url2: String
    let img_url3: String
}
