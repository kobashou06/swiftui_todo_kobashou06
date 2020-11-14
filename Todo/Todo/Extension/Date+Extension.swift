//
//  Date+Extension.swift
//  Todo
//
//  Created by kobashou06 on 2020/11/14.
//  Copyright © 2020 kobashou06. All rights reserved.
//

import Foundation

extension Date{
    //「時分秒」を切り落とした今日の日付を作成
    static var today : Date{
        let calender = Calendar(identifier: .gregorian)
        let time = Date()
        let today = calender.startOfDay(for: time)
        return today
    }
    //「時分秒」を切り落とした明日の日付を作成
    static var tomorrow : Date{
        let calender = Calendar(identifier: .gregorian)
        let tomorrow = calender.date(byAdding: DateComponents(day: 1), to: Date.today)!
        return tomorrow
    }
}
