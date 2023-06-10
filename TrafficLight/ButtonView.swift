//
//  ButtonView.swift
//  TrafficLight
//
//  Created by AbuYusuf on 10.06.2023.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> ()
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .font(.title.bold())
                .frame(width: 200, height: 50)
                .background(.blue)
                .cornerRadius(16)
        }
    }
   
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START") {} 
    }
}
