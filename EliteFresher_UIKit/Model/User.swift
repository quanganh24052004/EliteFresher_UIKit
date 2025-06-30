//
//  User.swift
//  EliteFresher_UIKit
//
//  Created by iKame Elite Fresher 2025 on 6/30/25.
//

import Foundation

struct User : Codable{
    public var firstName: String
    public var lastName: String
    public var gender: Gender
    public var weight: Double
    public var height: Double
}

enum Gender: String, Codable {
    case male = "Nam"
    case female = "Nữ"
}

extension Gender {
    static func from(index: Int) -> Gender {
        switch index {
        case 0: return .male
        case 1: return .female
        default: return .male
        }
    }

    func toIndex() -> Int {
        switch self {
        case .male: return 0
        case .female: return 1
        }
    }
}
