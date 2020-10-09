//
//  ViewController.swift
//  ChinesseHoroscope
//
//  Created by Mersad Meyfour Asadi on 08/10/2020.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextFiled: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextFiled.delegate = self
        datePicker.setValue(UIColor.white, forKey: "textColor")
        
        self.hideKeyboardWhenTappedAround()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(sender:)), name: UIResponder.keyboardWillShowNotification, object: nil);

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(sender:)), name: UIResponder.keyboardWillHideNotification, object: nil);
        updateUI()
        
    }
    
    func updateUI () {
        nameTextFiled.attributedPlaceholder = NSAttributedString(string: "Your Name: ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.init(white: 1.0, alpha: 0.5)])
        
        nameTextFiled.text == "" ? (doneButton.isEnabled = false) : (doneButton.isEnabled = true)
        //doneButton.isEnabled ? (doneButton.backgroundColor?.ciColor.blue) :(doneButton.backgroundColor?.ciColor.red)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @objc func keyboardWillShow(sender: NSNotification) {
         self.view.frame.origin.y = -150 // Move view 150 points upward
    }

    @objc func keyboardWillHide(sender: NSNotification) {
         self.view.frame.origin.y = 0 // Move view to original position
    }

    @IBAction func didEditTextField(_ sender: UITextField) {
        updateUI()
    }
    @IBAction func didTapGoButton(_ sender: UIButton) {
        print("Hello")
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

