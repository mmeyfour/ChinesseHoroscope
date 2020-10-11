//
//  ZodiacSign.swift
//  ChinesseHoroscope
//
//  Created by Mersad Meyfour Asadi on 10/10/2020.
//

import Foundation


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

enum Animal: String {
    case snake = "Snake"
    case horse = "Horse"
    case rat = "Rat"
    case ox = "Ox"
    case sheep = "Sheep"
    case monkey = "Monkey"
    case tiger = "Tiger"
    case hare = "Hare"
    case rooster = "Rooster"
    case dog = "Dog"
    case dragon = "Dragon"
    case pig = "Pig"
}

enum Element: String {
    case water = "Water"
    case metal = "Metal"
    case fire = "Fire"
    case wood = "Wood"
    case ground = "Ground"
}

enum Aspect{
    case yin
    case yang
}

enum ForceType {
    case minor
    case major
}

extension Animal {
    var friend : [Animal]{
        switch self {
            case .snake:
                return [Animal.rooster,Animal.ox]
            case .horse:
                return [Animal.rooster,Animal.ox]
            case .rat:
                return [Animal.rooster,Animal.ox]
            case .ox:
                return [Animal.rooster,Animal.ox]
            case .sheep:
                return [Animal.rooster,Animal.ox]
            case .monkey:
                return [Animal.rooster,Animal.ox]
            case .tiger:
                return [Animal.rooster,Animal.ox]
            case .hare:
                return [Animal.rooster,Animal.ox]
            case .rooster:
                return [Animal.rooster,Animal.ox]
            case .dog:
                return [Animal.rooster,Animal.ox]
            case .dragon:
                return [Animal.rooster,Animal.ox]
            case .pig:
                return [Animal.rooster,Animal.ox]
        }
    }
}

//serpiente compatible con gallo y buey
//caballo compatible con tigre y perro
//rata compatible con dragón y mono
//buey compatible con serpiente y gallo
//oveja compatible con cerdo y conejo
//mono compatible con rata y dragón
//tigre compatible con caballo y perro
//conejo compatible con cerdo y oveja
//gallo compatible con serpiente y buey
//perro compatible con tigre y caballo
//dragón compatible con rata y mono
//cerdo compatible con conejo y oveja
