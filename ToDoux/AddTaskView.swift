//
//  AddTaskView.swift
//  ToDoux
//
//  Created by Antoine BODART on 06/07/2025.
//

import SwiftUI

struct AddTaskView: View {

    @Environment(\.dismiss) var dismiss
    @State private var taskName: String = ""
    @Binding var tasks: [ToDoList]
    
    var body: some View {
        NavigationStack() {
            VStack(spacing: 20) {
                TextField("Enter task name", text: $taskName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Add Task") {
                    let newTask = ToDoList(name: taskName, isDone: false)
                    tasks.append(newTask)
                    dismiss()
                }
                .disabled(taskName.isEmpty)
                .buttonStyle(.borderedProminent)
                .padding()
                
                Spacer()
            }
            .navigationTitle("New Task")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}

//#Preview {
//    AddTaskView()
//}
