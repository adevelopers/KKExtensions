//
//  Date+extensions.swift
//  AudioReminder
//
//  Created by Kirill Khudiakov on 29/01/2019.
//  Copyright © 2019 adeveloper. All rights reserved.
//

import Foundation

public extension Date {
    var nextDay: Date? {
      if let noon = noon {
        return Calendar.current.date(byAdding: .day, value: 1, to: noon)!
      }
      return nil
    }

    var previousDay: Date? {
      if let noon = noon {
        return Calendar.current.date(byAdding: .day, value: -1, to: noon)
      }
      return nil
    }

    var noon: Date? {
        return Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: self)
    }
}

public extension Date {
    func formatted( format: String = "dd.MM.yyyy", and locale: Locale = Locale(identifier: "ru") ) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = locale
        dateFormatter.dateFormat =  format
        return dateFormatter.string(from: self)
    }
}

public extension Date {

    static func combineDateAndTime(date: Date, time: Date) -> Date {
        let calendar = NSCalendar.current
        let dateComponents = calendar.dateComponents([.year, .month, .day], from: date)
        let timeComponents = calendar.dateComponents([.hour, .minute, .second], from: time)

        var components = DateComponents()
        components.year = dateComponents.year
        components.month = dateComponents.month
        components.day = dateComponents.day
        components.hour = timeComponents.hour
        components.minute = timeComponents.minute
        components.second = timeComponents.second

        return calendar.date(from: components)!
    }

    var time: DateComponents {
        get {
            return Calendar.current.dateComponents([.hour, .minute, .second], from: self)
        }
    }

    var seconds: Int {
        get {
            return Calendar.current.component(.second, from: self)
        }
        set {
            let currentSeconds = Calendar.current.component(.second, from: self)
            let secondsToAdd = newValue - currentSeconds
            if let date = Calendar.current.date(byAdding: .second, value: secondsToAdd, to: self) {
                self = date
            }

        }
    }
}

public extension Date {
    func startDate() -> Date {
        var start = DateComponents()
        let calendar = Calendar.current
        start.calendar = calendar
        start.year = calendar.component(.year, from: self)
        start.month = calendar.component(.month, from: self)
        start.day = calendar.component(.day, from: self)
        start.hour = 0
        start.minute = 0
        start.second = 0

        return start.date ?? Date()
    }

    func endDate() -> Date {
        var start = DateComponents()
        let calendar = Calendar.current
        start.calendar = calendar
        start.year = calendar.component(.year, from: self)
        start.month = calendar.component(.month, from: self)
        start.day = calendar.component(.day, from: self)
        start.hour = 23
        start.minute = 59
        start.second = 59

        return start.date ?? Date()
    }

}

//get first day of the month
public extension Date {
    var weekday: Int {
        return Calendar.current.component(.weekday, from: self)
    }
    var firstDayOfTheMonth: Date {
        return Calendar.current.date(from: Calendar.current.dateComponents([.year,.month], from: self))!
    }
}
