//
//  AnimalViewController.swift
//  ChinesseHoroscope
//
//  Created by Mersad Meyfour Asadi on 11/10/2020.
//

import UIKit

class AnimalViewController: UIViewController {
    
    //    MARK: State
    var buttonTag = 13
    let animalList = AnimalList
    
    //    MARK: Outlets
    @IBOutlet var animalButtons: [UIButton]!
    
    //    MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var number = 0
        for button in animalButtons {
            button.setBackgroundImage(animalList[number].image[0], for: .normal)
            print(animalList[number])
            number += 1
        }
    }
    
    //    MARK: Helpers
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.destination is SignViewController
        {
            let vc = segue.destination as? SignViewController
            vc?.tag = buttonTag
        }
    }
    
    //    MARK: Action
    @IBAction func didTappedSignButton(_ sender: UIButton) {
        
        guard let tag = (sender as? UIButton)?.tag else {
            return
        }
        buttonTag = tag
        print(buttonTag)
        performSegue(withIdentifier: "Sign", sender: nil)
    }
}


