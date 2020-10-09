//
//  User.swift
//  ChinesseHoroscope
//
//  Created by Mersad Meyfour Asadi on 09/10/2020.
//

import Foundation

struct User{
    let name: String
    let day: Int
    let month: Int
    let year: Int
    
    let sign: Sign
    
}

struct Sign {
    let animal: Animal
    let element: Element
    let firends: [Animal]
    
}

enum Animal: String {
    case snake = "Snake"
    case horse = "Horse"
    case rat = "Rat"
    case ox = "Ox"
    case sheep = "Sheep"
    case monkey = "Monkey"
    case tiger = "Tiger"
    case rabbit = "Rabbit"
    case rooster = "Rooster"
    case dog = "Dog"
    case dragon = "Dragon"
    case pig = "Pig"
}

enum Element {
    case water
    case metal
    case fire
    case wood
    case ground
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
            case .rabbit:
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
