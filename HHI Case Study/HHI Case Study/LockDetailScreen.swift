//
//  LockDetailScreen.swift
//  HHI Case Study
//
//  Created by Chandramouli on 04/03/22.
//

import SwiftUI

struct LockDetailScreen: View {
    var body: some View {
        MainView()
            .navigationBarTitle(Text("Lock Detail Screen"), displayMode: .inline)
    }
}

struct LockDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        LockDetailScreen()
    }
}
