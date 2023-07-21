//
//  ContentView.swift
//  ToDoListProject
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI
struct ContentView: View {
  @State var toDoItems: [ToDoItem] = []
  @State private var showNewTask = false
  var body: some View {
    VStack {
      HStack{
        Text("To Do List")
           .font(.system(size: 40))
           .fontWeight(.black)
        Spacer()
        Button(action: {
          self.showNewTask = true
        }) {
        Text("+")
          Spacer()
        }
      }
      .padding()
    }
    .padding()
    List {
        ForEach (toDoItems) { toDoItem in
            Text(toDoItem.title)
          }
    }
    if showNewTask {
      NewToDoView(title: "", isImportant: false)
        }
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
