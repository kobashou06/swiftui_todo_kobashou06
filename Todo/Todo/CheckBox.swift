//
//  CheckBox.swift
//  Todo
//
//  Created by kobashou06 on 2020/11/08.
//  Copyright © 2020 kobashou06. All rights reserved.
//

import SwiftUI

struct CheckBox: View {
    @State var checked: Bool=false
    var body: some View {
        Toggle(isOn: $checked){
            Text("チェックボックス")
        }
    }
}


struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CheckBox()
        }
    }
}
