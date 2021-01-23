//
//  Status.swift
//  InstagramTimeline
//
//  Created by Зехниддин on 21/01/21.
//

import Foundation
import Combine

class Status: ObservableObject {
    var didChange = PassthroughSubject<Status, Never>()
    @Published var userid: String? { didSet { self.didChange.send(self) } }
    
    func listen() {
        if let userid = UserDefaults.standard.string(forKey: "key_data") {
            self.userid = userid
        } else {
            self.userid = nil
        }
    }
}
