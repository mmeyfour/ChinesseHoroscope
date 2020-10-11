//
//  Animal.swift
//  ChinesseHoroscope
//
//  Created by Mersad Meyfour Asadi on 11/10/2020.
//

import Foundation
import UIKit

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

extension Animal {
    var description: String {
        switch self {
            case .snake:
                return "Inteligente, misterioso, intuitivo, atrevido, ordenado, sofisticado"
            case .horse:
                return "Leal, trabajador, gregario, cordial, energico, popular"
            case .rat:
                return "Ingenioso, ambicioso, trabajador, decidido, laborioso, inteligente"
            case .ox:
                return "Paciente, valeroso, convencional, fiable, resuelto, inteligente"
            case .sheep:
                return "Pacifico, adaptable, honesto, creativo, imaginativo, sincero"
            case .monkey:
                return "Independiente, vivaz, ingenioso, divertido, atrevido, inventivo"
            case .tiger:
                return "Atrevido, agotador, apasionado, rapido, peligroso, divertido"
            case .hare:
                return "Generoso, intuitivo, tactil, egoista, discreto, sensible"
            case .rooster:
                return "Valeroso, protector, vistoso, capaz, comunicativo, honesto"
            case .dog:
                return "Leal, responsable, sensible, moral, fiable, imaginativo"
            case .dragon:
                return "Entusiasta, atrevido, inspirador, ganador, materialista, independiente"
            case .pig:
                return "Sensual, generoso,alegre, tolerante, feliz, entusiasta"
        }
    }
}
extension Animal {
    var image: UIImage {
        switch self {
            case .snake:
                return #imageLiteral(resourceName: "snake")
            case .horse:
                return #imageLiteral(resourceName: "mole.png")
            case .rat:
                return #imageLiteral(resourceName: "mole.png")
            case .ox:
                return #imageLiteral(resourceName: "mole.png")
            case .sheep:
                return #imageLiteral(resourceName: "mole.png")
            case .monkey:
                return #imageLiteral(resourceName: "mole.png")
            case .tiger:
                return #imageLiteral(resourceName: "mole.png")
            case .hare:
                return #imageLiteral(resourceName: "mole.png")
            case .rooster:
                return #imageLiteral(resourceName: "mole.png")
            case .dog:
                return #imageLiteral(resourceName: "mole.png")
            case .dragon:
                return #imageLiteral(resourceName: "mole.png")
            case .pig:
                return #imageLiteral(resourceName: "mole.png")
        }
    }
}


let AnimalList = [Animal.snake,Animal.horse,Animal.rat,Animal.ox,Animal.sheep,Animal.monkey,Animal.tiger,Animal.hare,Animal.rooster
                  ,Animal.dog,Animal.dragon,Animal.pig]
