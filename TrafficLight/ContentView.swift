//
//  ContentView.swift
//  TrafficLight
//
//  Created by AbuYusuf on 09.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentLight: CurrentLight = .lightOff
    
    
    var body: some View {
        VStack {
            TrafficLightView(color: .red, lightIsOn: currentLight == .red)
            TrafficLightView(color: .yellow, lightIsOn: currentLight == .yellow)
            TrafficLightView(color: .green, lightIsOn: currentLight == .green)
            VStack {
                Spacer()
            }
            ButtonView(title: currentLight == .lightOff ? "START" : "NEXT") {
                switch currentLight {
                case .red:
                    currentLight = .yellow
                case .yellow:
                    currentLight = .green
                case .green:
                    currentLight = .red
                case .lightOff:
                    currentLight = .red
                }
            }
        }
        .padding()
    }
    
    
    private enum CurrentLight {
        case red, yellow, green, lightOff
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
