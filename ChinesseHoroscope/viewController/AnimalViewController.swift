//
//  AnimalViewController.swift
//  ChinesseHoroscope
//
//  Created by Mersad Meyfour Asadi on 11/10/2020.
//

import UIKit

class AnimalViewController: UIViewController {
    
    let animalList = AnimalList
    @IBOutlet var animalButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var number = 0
        for button in animalButtons {
            button.setBackgroundImage(animalList[number].image, for: .normal)
            print(animalList[number])
            number += 1

        }

    }
    @IBOutlet var buttons: [UIButton]!
    
    @IBAction func button(_ sender: UIButton) {
    }
    
}
