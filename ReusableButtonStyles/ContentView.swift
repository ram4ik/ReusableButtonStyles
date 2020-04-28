//
//  ContentView.swift
//  ReusableButtonStyles
//
//  Created by Ramill Ibragimov on 28.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct NeumorphicButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(
                Group {
                    if configuration.isPressed {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white.opacity(0.3), lineWidth: 2)
                            .shadow(color: Color.black.opacity(0.3), radius: 2, x: 3, y: 3)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(color: Color.black.opacity(0.3), radius: 2, x: -2, y: -2)
                            .clipShape(RoundedRectangle(cornerRadius: 10))

                    } else {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 225/255, green: 235/255, blue: 245/255))
                            .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
                            .shadow(color: Color.white.opacity(0.7), radius: 2, x: -2, y: -2)
                    }
                }
            )
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 225/255, green: 235/255, blue: 245/255)
                .edgesIgnoringSafeArea(.all)
            
            HStack {
                Button(action: {
                    print("Pressed")
                }) {
                    Image(systemName: "wifi")
                        .padding()
                        .foregroundColor(Color.black.opacity(0.6))
                }.buttonStyle(NeumorphicButtonStyle())
                
                Button(action: {
                    print("Pressed")
                }) {
                    Image(systemName: "heart")
                        .padding()
                        .foregroundColor(Color.black.opacity(0.6))
                }.buttonStyle(NeumorphicButtonStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
