//
//  Friend.swift
//  lab_3
//
//  Created by Student @C03 on 07.11.2024.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    var birthday: Date
    
    init(name: String, birthday: Date) {
           self.name = name
           self.birthday = birthday
       }
    
    var isBirthdayToday: Bool {
        Calendar.current.isDateInToday(birthday)
    }
}
