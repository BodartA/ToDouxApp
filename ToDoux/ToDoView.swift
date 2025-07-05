//
//  ToDoView.swift
//  ToDoux
//
//  Created by Antoine BODART on 28/06/2025.
//

import SwiftUI

struct ToDoView: View {
    
    @State private var tasks: [ToDoList] = [
        ToDoList(name: "Cleaning House", isDone: false),
        ToDoList(name: "Sort pappers", isDone: false),
        
    ]
    
    var body: some View {
        
        let pendingTasks = tasks.filter { !$0.isDone }
        
        VStack(spacing: 10) {
            
            HStack() {
                
                Image("ToDo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                
                VStack(spacing: 0) {
                    Text("\(pendingTasks.count) \(pendingTasks.count > 1 ? "Tasks" : "Task")")
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
            
            ScrollView() {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(tasks.indices, id: \.self) { index in
                        
                        HStack() {
                            Text(tasks[index].name)
                                .font(.headline)
                                .fontWeight(.bold)
                            Spacer()
                            Button(action: {
                                tasks[index].isDone.toggle()
                            }) {
                                Image(systemName: tasks[index].isDone ? "checkmark.circle.fill" : "circle")
                            }
                            
                        }
                        .padding()
                        .frame(width: .infinity, height: 50)
                        .background(tasks[index].isDone ? Color("CustomYellow").opacity(0.4) : Color("CustomYellow"))
                        .foregroundColor(Color.black.opacity(0.8))
                        .cornerRadius(15)
                    }
                }
            }
            .padding(10)
            .zIndex(0)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            
            Button(action: {
                print("Task added")
            }) {
                Text("Add Task")
                    .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                    .background(Color("CustomPurple"))
                    .cornerRadius(15)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .opacity(0.8)
            }
            
            
        }
        .padding(24)
    }
}

#Preview {
    ToDoView()
}
