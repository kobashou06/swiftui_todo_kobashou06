//
//  UIApplication+Extension.swift
//  Todo
//
//  Created by kobashou06 on 2020/11/15.
//  Copyright © 2020 kobashou06. All rights reserved.
//

import SwiftUI

extension UIApplication {
    func closeKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder),
                   to: nil,
                   from: nil,
                   for: nil)
    }
}
