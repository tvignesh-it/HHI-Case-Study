//
//  HomeScreen.swift
//  HHI Case Study
//
//  Created by Chandramouli on 04/03/22.
//

import SwiftUI

struct HomeScreen: View {
    @State var isLinkActive:Bool = false
    @State var showToggle:Bool = false
    @ObservedObject var settings = Settings()

    var body: some View {
        //self.settings.toggle.toggle()
        NavigationView {
                    VStack(alignment: .center) {
                        
                        NavigationLink(destination: LockDetailScreen(), isActive: $isLinkActive) {
                            Button(action: {
                                self.isLinkActive = true
                            }) {
                                Text("Lock Details")
                            }
                        }
                        
                        //self.settings.toogleOff()
                        MainView()
                        

                    }
                }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
