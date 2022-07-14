//
//  ButtonStyle.swift
//  Sudoku
//
//  Created by Rodion on 18.12.2021.
//

import SwiftUI

struct DefaultButtonStyle: ButtonStyle
{
    func makeBody(configuration: Configuration) -> some View
    {
        if(configuration.isPressed)
        {
            print("Button is pressed")
        }
        else
        {
            print("Button released")
        }
        
        return configuration.label
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 0.8 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
