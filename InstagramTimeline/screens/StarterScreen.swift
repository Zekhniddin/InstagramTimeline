//
//  StarterScreen.swift
//  InstagramTimeline
//
//  Created by Зехниддин on 21/01/21.
//

import SwiftUI

struct StarterScreen: View {
    @EnvironmentObject var status: Status
    
    var body: some View {
        VStack {
            if self.status.userid != nil {
                HomeScreen()
            } else {
                SignInScreen()
            }
        }
        .onAppear {
            status.listen()
        }
    }
}

struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
    }
}
