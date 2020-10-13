//
//  SignViewController.swift
//  ChinesseHoroscope
//
//  Created by Mersad Meyfour Asadi on 12/10/2020.
//

import UIKit

class SignViewController: UIViewController {
    
    var tag = 0
    let animals = AnimalList
    
    @IBOutlet weak var fisrtTextLabel: UILabel!
    @IBOutlet weak var signImage: UIImageView!
    @IBOutlet weak var secondTextLabel: UILabel!
    @IBOutlet weak var fisrtAfinImage: UIImageView!
    @IBOutlet weak var secondAfinImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(animals[tag])
        fisrtTextLabel.text = "\(animals[tag].rawValue): \(animals[tag].description)"
        signImage.image = animals[tag].image
        
        for animal in 0...animals.count-1 {
            if animals[tag].friend[0] == animals[animal] {
                print("\(animals[tag].friend[0]) : \(animals[animal])")
                fisrtAfinImage.image = animals[animal].image
            }
        }
        for animal in 0...animals.count-1 {
            if animals[tag].friend[1] == animals[animal] {
                print("\(animals[tag].friend[1]) : \(animals[animal])")
                secondAfinImage.image = animals[animal].image
            }
        }
    }

}
