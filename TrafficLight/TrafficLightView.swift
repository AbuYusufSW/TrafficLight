//
//  TrafficLightView.swift
//  TrafficLight
//
//  Created by AbuYusuf on 09.06.2023.
//

import SwiftUI

struct TrafficLightView: View {
    let color: Color
    var lightIsOn = false
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(lightIsOn ? 1 : 0.5)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(color: color, radius: 10)
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(color: .red, lightIsOn: false)
    }
}
