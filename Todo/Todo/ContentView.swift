//
//  ContentView.swift
//  Todo
//
//  Created by kobashou06 on 2020/11/08.
//  Copyright © 2020 kobashou06. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Color.tBackground
                .edgesIgnoringSafeArea(.top)
                .frame(height:0)
            UserView(image:Image("profile"),userName: "Shouta Kobayashi")
            VStack (spacing:0){
                HStack (spacing:0){
                    CategoryView(category: .ImpUrg_1st)
                    Spacer()
                    CategoryView(category: .ImpNUrg_2nd)
                }
                HStack (spacing:0){
                    CategoryView(category: .NImpUrg_3rd)
                    Spacer()
                    CategoryView(category: .NImpNUrg_4th)
                }
            }.padding()
            
            TaskToday()
            
        }.background(Color.tBackground)
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static let context = (UIApplication.shared.delegate as! AppDelegate)
        .persistentContainer.viewContext
    
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, context)
    }
}
