//
//  MainView.swift
//  HHI Case Study
//
//  Created by Chandramouli on 04/03/22.
//

import SwiftUI
// Our observable object class
class Settings: ObservableObject {
    @Published var toggle:Bool = false
    
    func toogleOn()
    {
        toggle = true
    }
    func toogleOff()
    {
        toggle = false
    }
    
    
    
}
struct MainView: View {
    // Properties
    @State public var isToggle : Bool = false
    @State private var disabled = true
    @EnvironmentObject var settings: Settings
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            
            Toggle(isOn: $settings.toggle){
                
                            Text("Firmware Update Available")
                            .font(.body)
                            .foregroundColor(Color.blue)
                           
                        }
            
            Button(action: {
                
                print("Button action")
            }) {
                Text("Update Firmware")
            }
            .disabled(settings.toggle == false)
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    @State private var showAlert : Bool = false
    static var previews: some View {
        MainView()
            .previewLayout(.fixed(width: 375, height: 128))
    }
}
