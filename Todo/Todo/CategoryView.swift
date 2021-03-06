//
//  CategoryView.swift
//  Todo
//
//  Created by kobashou06 on 2020/11/08.
//  Copyright © 2020 kobashou06. All rights reserved.
//

import SwiftUI

struct CategoryView: View {
    var category: TodoEntity.Category
    @State var numberOfTasks = 0
    @State var showList = false
    @Environment(\.managedObjectContext) var viewContext
    @State var addNewTask = false
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: category.image())
                .font(.largeTitle)
                .sheet(isPresented: $showList){
                    TodoList(category: self.category)
                        .environment(\.managedObjectContext, self.viewContext)
                }
            
            Text(category.toString())
            Text("・\(numberOfTasks)タスク")
            Button(action: {
                self.addNewTask = true
            }) {
                Image(systemName: "plus")
            }.sheet(isPresented: $addNewTask){
                NewTask(category: self.category.rawValue)
                    .environment(\.managedObjectContext, self.viewContext)
            }
            Spacer()
        }
            .padding()
        .frame(maxWidth: .infinity, minHeight: 150)
            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
            .background(category.color())
            .cornerRadius(20)
        .onTapGesture {
            self.showList = true
        }
    }
}

struct CategoryView_Previews: PreviewProvider{
    static let context = (UIApplication.shared.delegate as! AppDelegate)
        .persistentContainer.viewContext
    static var previews: some View {
        VStack {
            CategoryView(category: .ImpUrg_1st, numberOfTasks: 100)
            CategoryView(category: .ImpNUrg_2nd)
            CategoryView(category: .NImpUrg_3rd )
            CategoryView(category: .NImpNUrg_4th )
        }.environment(\.managedObjectContext, context)
    }
}
