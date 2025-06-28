//
//  ToDoView.swift
//  ToDoux
//
//  Created by Antoine BODART on 28/06/2025.
//

import SwiftUI

struct ToDoView: View {
    var body: some View {
            
        
            VStack(spacing: 10) {
                
                HStack() {
                    
                    Image("ToDo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    VStack(spacing: 0) {
                        Text("1 Task")
                            .font(.system(size: 25))
                            .opacity(0.5)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .bottomLeading)
                        Text("Today")
                            .font(.system(size: 60))
                            .opacity(0.8)
                            .fontWeight(.heavy)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    }
                    .foregroundColor(Color.black)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                }
                .frame(maxWidth: .infinity, maxHeight: 100, alignment: .center)
                
                
                
                // Liste
                
                
                Text("Liste ici")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .border(Color.green)
                
                // Bouton +
                
                Text("Bouton")
                    .frame(maxWidth: .infinity, maxHeight: 50, alignment: .trailing)
                    .border(Color.red)
            }
            .padding(24)
        }
    }

#Preview {
    ToDoView()
}
