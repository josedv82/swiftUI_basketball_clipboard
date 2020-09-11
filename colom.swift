//
//  colom.swift
//  playBook
//
//  Created by Jose Fernandez del Valle on 9/11/20.
//  Copyright © 2020  All rights reserved.
//

import SwiftUI

struct colom: View {
   
     @State private var Position: CGSize = .zero
     @State private var NewPosition: CGSize = .zero

       var body: some View {
           
               Image("colom")
               .resizable()
               .clipShape(Circle())
               .frame(width:60, height: 45)
               .padding(.trailing, 20)
               .offset(x: self.Position.width, y: self.Position.height)
               .gesture(DragGesture()
                   .onChanged { value in
                       self.Position = CGSize(width: value.translation.width + self.NewPosition.width,
                                                   height: value.translation.height + self.NewPosition.height)
                       
                   }
                   
               .onEnded { value in
                   self.Position = CGSize(width: value.translation.width + self.NewPosition.width,
                                               height: value.translation.height + self.NewPosition.height)
                   
                   self.NewPosition = self.Position
                   
                   }
                   
                   )
           

       }
}

struct colom_Previews: PreviewProvider {
    static var previews: some View {
        colom()
    }
}
