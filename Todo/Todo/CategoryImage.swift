//
//  CategoryImage.swift
//  Todo
//
//  Created by kobashou06 on 2020/11/08.
//  Copyright © 2020 kobashou06. All rights reserved.
//

import SwiftUI

struct CategoryImage: View {
    
    var category: TodoEntity.Category
    
    init(_ category: TodoEntity.Category?){
        self.category = category ?? .ImpUrg_1st
    }
    
    var body: some View {
        Image(systemName:category.image())
        .resizable()
        .scaledToFit()
        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
        .padding(2.0)
        .frame(width:30,height:30)
            .background(category.color())
        .cornerRadius(6.0)
         
    }
}

struct CategoryImage_Previews: PreviewProvider {
    static var previews: some View {
        CategoryImage(TodoEntity.Category.ImpUrg_1st)
    }
}
