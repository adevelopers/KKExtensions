//
//  UserDefaults+extensions.swift
//  AudioReminder
//
//  Created by Kirill Khudiakov on 31/01/2019.
//  Copyright © 2019 adeveloper. All rights reserved.
//

import Foundation

public extension UserDefaults {
    var hasLaunchedBefore: Bool {
        get { return bool(forKey: #function) }
        set { set(newValue, forKey: #function) }
    }

    var isTooltipsEnabled: Bool {
        get { return bool(forKey: #function) }
        set { set(newValue, forKey: #function) }
    }

    var isQuickRecordEnabled: Bool {
        get { return bool(forKey: #function) }
        set { set(newValue, forKey: #function) }
    }

    var runsCount: Int {
        get { return integer(forKey: #function) }
        set { set(newValue, forKey: #function) }
    }

    var alreadyReviewedInAppStore: Bool {
        get { return bool(forKey: #function) }
        set { set(newValue, forKey: #function) }
    }

    var language: String {
        get { return string(forKey: #function) ?? "" }
        set { set(newValue, forKey: #function) }
    }
}
