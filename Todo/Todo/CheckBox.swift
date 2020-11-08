//
//  CheckBox.swift
//  Todo
//
//  Created by kobashou06 on 2020/11/08.
//  Copyright © 2020 kobashou06. All rights reserved.
//

import SwiftUI

struct CheckBox: View {
    @Binding var checked: Bool
    var body: some View {
        Image(systemName: checked ? "checkmark.circle" : "circle").onTapGesture {
                self.checked.toggle()
            }
    }
}


struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            CheckBox(checked: .constant(false))
            CheckBox(checked: .constant(true))
        }
    }
}
