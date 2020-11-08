//
//  CategoryImage.swift
//  Todo
//
//  Created by kobashou06 on 2020/11/08.
//  Copyright © 2020 kobashou06. All rights reserved.
//

import SwiftUI

struct CategoryImage: View {
    var body: some View {
        Image(systemName:"tortoise.fill")
        .resizable()
        .scaledToFit()
        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
        .padding(2.0)
        .frame(width:30,height:30)
        .background(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
        .cornerRadius(6.0)
         
    }
}

struct CategoryImage_Previews: PreviewProvider {
    static var previews: some View {
        CategoryImage()
    }
}
