//
//  SignViewController.swift
//  ChinesseHoroscope
//
//  Created by Mersad Meyfour Asadi on 12/10/2020.
//

import UIKit

class SignViewController: UIViewController {
    
    var tag = 0
    
    @IBOutlet weak var fisrtTextLabel: UILabel!
    @IBOutlet weak var signImage: UIImageView!
    @IBOutlet weak var secondTextLabel: UILabel!
    @IBOutlet weak var fisrtAfinImage: UIImageView!
    @IBOutlet weak var secondAfinImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animal = AnimalList[tag]
        
        updateUI(animal: animal)
        
    }
    
    func updateUI(animal: Animal){
        fisrtTextLabel.text = "\(animal.rawValue) se caracteriza por ser \(animal.description). Los usuarios de este signo pueden tener afinidad con otros usuarios de signo \(animal.friend[0].rawValue) y \(animal.friend[1].rawValue)"
        signImage.image = animal.image[0]
        secondTextLabel.text = "Descubre su ciclo de afinidad entre \(Element.fire.rawValue), \(Element.water.rawValue),\(Element.ground.rawValue), \(Element.metal.rawValue) y \(Element.wood.rawValue) segun tu año junto con sus aspectos dominantes entre el \(Aspect.yin.rawValue) y el \(Aspect.yin.rawValue)"
        
        for number in 0...AnimalList.count-1 {
            if animal.friend[0] == AnimalList[number] {
                print("\(animal.friend[0]) : \(AnimalList[number])")
                fisrtAfinImage.image = AnimalList[number].image[0]
            }
        }
        for number in 0...AnimalList.count-1 {
            if animal.friend[1] == AnimalList[number] {
                print("\(animal.friend[1]) : \(AnimalList[number])")
                secondAfinImage.image = AnimalList[number].image[0]
            }
        }
    }
    
}

