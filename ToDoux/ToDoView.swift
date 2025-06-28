//
//  ToDoView.swift
//  ToDoux
//
//  Created by Antoine BODART on 28/06/2025.
//

import SwiftUI

struct ToDoView: View {
    var body: some View {
        ZStack() {
            VStack {
                        Ellipse()
                            .fill(Color.blue)
                            .frame(width: UIScreen.main.bounds.width * 1.2, height: 300)
                            .offset(y: -150) // Décale de moitié vers le haut
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    .edgesIgnoringSafeArea(.top)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

#Preview {
    ToDoView()
}
