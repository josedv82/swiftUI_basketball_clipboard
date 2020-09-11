//
//  ContentView.swift
//  playBook
//
//  Created by Jose Fernandez del Valle on 9/11/20.
//  Copyright © 2020 me.fernandez.jose. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentDrawing: Drawing = Drawing()
    @State private var drawings: [Drawing] = [Drawing]()
    @State private var color: Color = Color.black
    @State private var lineWidth: CGFloat = 3.0

    var body: some View {
        
        VStack{
        
            
        Spacer()
            
        Text("Playbook")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.top, 100)
            .padding(.trailing, 235)
        
            
        HStack{
        Spacer()
        ZStack{
                        
        VStack{
            Image("court")
            .resizable()
            .padding(.leading, 25)
            .frame(width: 350, height: 500, alignment: .topLeading)
               }
            
        VStack{
        DrawingPad(
        currentDrawing: $currentDrawing,
        drawings: $drawings,
        color: $color,
        lineWidth: $lineWidth
        )
         .frame(width: 350, height: 500, alignment: .topLeading)
         .opacity(0.5)
                        
            }

        }
        
                
        VStack{
        ricky()
        colom()
        claver()
        beiran()
        marc()
        llull()
        pierre()
        rudy()
        juancho()
            }
        
            
        } //hstack
         
        DrawingControls(color: $color, drawings: $drawings, lineWidth: $lineWidth)
            .offset(y: -20)
            
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
