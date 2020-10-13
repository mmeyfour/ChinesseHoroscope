//
//  Animal.swift
//  ChinesseHoroscope
//
//  Created by Mersad Meyfour Asadi on 11/10/2020.
//

import Foundation
import UIKit

enum Animal: String {
    case snake = "Serpiente"
    case horse = "Caballo"
    case rat = "Rata"
    case ox = "Buey"
    case sheep = "Cabra"
    case monkey = "Mono"
    case tiger = "Tigre"
    case hare = "Liebre"
    case rooster = "Gallo"
    case dog = "Perro"
    case dragon = "Dragon"
    case pig = "Cerdo"
}

extension Animal {
    var friend : [Animal]{
        switch self {
            case .snake:
                return [Animal.rooster,Animal.ox]
            case .horse:
                return [Animal.tiger,Animal.dog]
            case .rat:
                return [Animal.dragon,Animal.monkey]
            case .ox:
                return [Animal.snake,Animal.rooster]
            case .sheep:
                return [Animal.pig,Animal.hare]
            case .monkey:
                return [Animal.rat,Animal.dragon]
            case .tiger:
                return [Animal.horse,Animal.dog]
            case .hare:
                return [Animal.pig,Animal.sheep]
            case .rooster:
                return [Animal.snake,Animal.ox]
            case .dog:
                return [Animal.tiger,Animal.horse]
            case .dragon:
                return [Animal.rat,Animal.monkey]
            case .pig:
                return [Animal.hare,Animal.sheep]
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
    var image: [UIImage] {
        switch self {
            case .snake:
                return [ #imageLiteral(resourceName: "snake Black"),#imageLiteral(resourceName: "snake white.png")]
            case .horse:
                return [#imageLiteral(resourceName: "horse black"),#imageLiteral(resourceName: "horse white.png")]
            case .rat:
                return [#imageLiteral(resourceName: "rat black"),#imageLiteral(resourceName: "rat white.png")]
            case .ox:
                return [#imageLiteral(resourceName: "ox black"),#imageLiteral(resourceName: "ox white.png")]
            case .sheep:
                return [#imageLiteral(resourceName: "sheep black"),#imageLiteral(resourceName: "sheep white.png")]
            case .monkey:
                return [#imageLiteral(resourceName: "monkey black.png"),#imageLiteral(resourceName: "monkey white.png")]
            case .tiger:
                return [#imageLiteral(resourceName: "tiger black"),#imageLiteral(resourceName: "tiger white.png")]
            case .hare:
                return [#imageLiteral(resourceName: "hare black"),#imageLiteral(resourceName: "hare white.png")]
            case .rooster:
                return [#imageLiteral(resourceName: "rooster black.png"),#imageLiteral(resourceName: "rooster white.png")]
            case .dog:
                return [#imageLiteral(resourceName: "dog black"),#imageLiteral(resourceName: "dog white.png")]
            case .dragon:
                return [#imageLiteral(resourceName: "dragon black"),#imageLiteral(resourceName: "dragon white.png")]
            case .pig:
                return [#imageLiteral(resourceName: "pig black"),#imageLiteral(resourceName: "pig white.png")]
        }
    }
}


let AnimalList = [Animal.snake,Animal.horse,Animal.rat,Animal.ox,Animal.sheep,Animal.monkey,Animal.tiger,Animal.hare,Animal.rooster
                  ,Animal.dog,Animal.dragon,Animal.pig]
