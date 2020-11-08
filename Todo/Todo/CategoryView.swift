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
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: category.image())
            Text(category.toString())
            Text("・\(numberOfTasks)タスク")
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(systemName: "plus")
            }
            Spacer()
        }
            .padding()
            .frame(maxWidth: .infinity, minHeight: 150)
            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
            .background(category.color())
            .cornerRadius(20)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CategoryView(category: .ImpUrg_1st,
                         numberOfTasks: 100)
            CategoryView(category: .ImpNUrg_2nd,
            numberOfTasks: 100)
            CategoryView(category: .NImpUrg_3rd,
            numberOfTasks: 100)
            CategoryView(category: .NImpNUrg_4th,
            numberOfTasks: 100)
        }
    }
}