//
//  ActualSignViewController.swift
//  ChinesseHoroscope
//
//  Created by Mersad Meyfour Asadi on 12/10/2020.
//

import UIKit

class ActualSignViewController: UIViewController {
    
    //    MARK: State
    var userSign = Sign(animal: .dog, element: .fire, domination: .init(name: .yang, type: .major), Dates: [])
    var userName = ""
    let animals = AnimalList
    
    //    MARK: Outlets
    @IBOutlet weak var firstTextLabel: UILabel!
    @IBOutlet weak var userSignImage: UIImageView!
    @IBOutlet weak var firstAfinImage: UIImageView!
    @IBOutlet weak var secondAfinImage: UIImageView!
    
    //    MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor.black
        UIBarButtonItem.appearance().tintColor = UIColor.systemBlue
        
        for animal in animals{
            if animal.rawValue == userSign.animal.rawValue{
                print("\(userName) su signo zodiaco es \(animal.rawValue) -> \(userSign.animal.rawValue)")
                firstTextLabel.text = "\(userName) tu signo zodiaco es \(animal.rawValue) y eres \(animal.description). Tu elemento es el \(userSign.element.rawValue) \(userSign.element.elementIcon) de aspecto \(userSign.domination.name) \(userSign.domination.type.rawValue) y tienes afinidad con \(userSign.animal.friend[0].rawValue) y \(userSign.animal.friend[1].rawValue)"
                
                switch userSign.domination.name {
                    case .yang:
                        animalAspect(animal: animal, number: 1)
                        self.view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
                        firstTextLabel.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
                    case .yin:
                        animalAspect(animal: animal, number: 0)
                        self.view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
                        firstTextLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                }
                
            }
        }
    }
    
    //    MARK: Helpers
    func animalAspect(animal: Animal,number: Int) {
        
        userSignImage.image = userSign.animal.image[number]
        
        for sign in animals {
            if animal.friend[0] == sign{
                firstAfinImage.image = sign.image[number]
            }
            if animal.friend[1] == sign{
                secondAfinImage.image = sign.image[number]
            }
        }
    }
}
