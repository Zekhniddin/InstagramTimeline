//
//  HomeScreen.swift
//  InstagramTimeline
//
//  Created by Зехниддин on 21/01/21.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var status: Status
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 20)!]
    }
    
    let itemStories = [
        ItemStoryModel(name: "John", image_url: "im_person1"),
        ItemStoryModel(name: "Anna", image_url: "im_person2"),
        ItemStoryModel(name: "John", image_url: "im_person1"),
        ItemStoryModel(name: "Anna", image_url: "im_person2"),
        ItemStoryModel(name: "John", image_url: "im_person1"),
        ItemStoryModel(name: "Anna", image_url: "im_person2"),
        ItemStoryModel(name: "John", image_url: "im_person1"),
        ItemStoryModel(name: "Anna", image_url: "im_person2")
    ]
    
    let itemPosts = [
        ItemPostModel(user_url: "im_user", user_name: "George", img_url1: "image1", img_url2: "image2", img_url3: "image3"),
        ItemPostModel(user_url: "im_person1", user_name: "John", img_url1: "image1", img_url2: "image2", img_url3: "image3"),
        ItemPostModel(user_url: "im_person2", user_name: "Anna", img_url1: "image1", img_url2: "image2", img_url3: "image3"),
        ItemPostModel(user_url: "im_person1", user_name: "John", img_url1: "image1", img_url2: "image2", img_url3: "image3"),
        ItemPostModel(user_url: "im_person2", user_name: "Anna", img_url1: "image1", img_url2: "image2", img_url3: "image3"),
        ItemPostModel(user_url: "im_person1", user_name: "John", img_url1: "image1", img_url2: "image2", img_url3: "image3"),
        ItemPostModel(user_url: "im_person2", user_name: "Anna", img_url1: "image1", img_url2: "image2", img_url3: "image3"),
        ItemPostModel(user_url: "im_person1", user_name: "John", img_url1: "image1", img_url2: "image2", img_url3: "image3"),
        ItemPostModel(user_url: "im_person2", user_name: "Anna", img_url1: "image1", img_url2: "image2", img_url3: "image3")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        AddStory()
                        ForEach(itemStories) {
                            ItemStory(img_url: $0.image_url, name: $0.name)
                        }
                    }
                    .padding(.top, 2)
                    .padding(.leading, 16)
                }
                
                ForEach(itemPosts) {
                    ItemPost(user_url: $0.user_url, user_name: $0.user_name, img_url1: $0.img_url1, img_url2: $0.img_url2)
                }
            }
            .padding(.horizontal, -20)
            .listStyle(PlainListStyle())
            .navigationBarItems(
                leading: Button(action: { }) {
                    Image(systemName: "camera")
                        .foregroundColor(.red)
                        .font(.title3)
                },
                trailing: Button(action: {
                    UserDefaults.standard.removeObject(forKey: "key_data")
                    self.status.listen()
                }) {
                    Image(systemName: "person")
                        .foregroundColor(.red)
                        .font(.title3)
                })
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
