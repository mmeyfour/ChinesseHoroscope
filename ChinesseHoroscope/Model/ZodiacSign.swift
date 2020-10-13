//
//  ZodiacSign.swift
//  ChinesseHoroscope
//
//  Created by Mersad Meyfour Asadi on 10/10/2020.
//

import Foundation
import UIKit

class Sign {
    var animal: Animal
    var element: Element
    var domination: Domination
    var Dates: [String]
    
    init(animal: Animal, element: Element,domination: Domination, Dates: [String]) {
        self.animal = animal
        self.element = element
        self.domination = domination
        self.Dates = Dates
    }
}

struct Domination {
    var name: Aspect
    var type: ForceType
}

class Dates {
    var day: Int
    var month: Int
    var year: Int
    
    init(day: Int, month: Int, year: Int) {
        self.day = day
        self.month = month
        self.year = year
    }
}

enum Element: String {
    case water = "Agua"
    case metal = "Metal"
    case fire = "Fuego"
    case wood = "Madera"
    case ground = "Tierra"
}
extension Element {
    var elementIcon: String {
        switch self {
            case .water:
                return "🌊"
            case .metal:
                return "🔩"
            case .fire:
                return "🔥"
            case .wood:
                return "🌲"
            case .ground:
                return "⛰"
        }
    }
}

enum Aspect: String{
    case yin = "Yin"
    case yang = "Yang"
}

enum ForceType: String {
    case minor = "menor"
    case major = "Mayor"
}

