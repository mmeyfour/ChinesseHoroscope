//
//  ActualSignViewController.swift
//  ChinesseHoroscope
//
//  Created by Mersad Meyfour Asadi on 12/10/2020.
//

import UIKit

class ActualSignViewController: UIViewController {
    
    var userSign = ""
    var userName = ""
    let animals = AnimalList
    
    @IBOutlet weak var firstTextLabel: UILabel!
    @IBOutlet weak var userSignImage: UIImageView!
    @IBOutlet weak var secondTextLabel: UILabel!
    @IBOutlet weak var firstAfinImage: UIImageView!
    @IBOutlet weak var secondAfinImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor.black
        UIBarButtonItem.appearance().tintColor = UIColor.systemBlue
        
        for animal in animals{
            if animal.rawValue == userSign{
                print("\(userName) su signo zodiaco es \(animal.rawValue) -> \(userSign)")
                firstTextLabel.text = "\(userName) su signo zodiaco es \(animal.rawValue) y sus cualidades son : \(animal.description)"
                userSignImage.image = animal.image
                
                for sign in animals {
                    if animal.friend[0] == sign{
//                        print("\(animal.friend[0]) : \(sign)")
                        firstAfinImage.image = sign.image
                    }
                }
                for sign in animals {
                    if animal.friend[1] == sign{
//                        print("\(animal.friend[1]) : \(sign)")
                        secondAfinImage.image = sign.image
                    }
                }
            }
        }
    }
    
}
