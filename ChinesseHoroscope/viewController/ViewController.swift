//
//  ViewController.swift
//  ChinesseHoroscope
//
//  Created by Mersad Meyfour Asadi on 08/10/2020.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var date: Dates!
    var userName: User?
    var userSign: Sign?
    
    @IBOutlet weak var nameTextFiled: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var datePicker: UIDatePicker!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        doneButton.isEnabled = false
        nameTextFiled.delegate = self
        datePicker.setValue(UIColor.white, forKey: "textColor")
        doneButton.layer.cornerRadius = 12
        nameTextFiled.layer.cornerRadius = 12
        datePicker.layer.cornerRadius = 12
        
        self.hideKeyboardWhenTappedAround()
//        self.navigationController?.isNavigationBarHidden = true
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillShow(sender:)),
                                               name: UIResponder.keyboardWillShowNotification, object: nil);

        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillHide(sender:)),
                                               name: UIResponder.keyboardWillHideNotification, object: nil);
        updateUI()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        nameTextFiled.text = ""
        doneButton.isEnabled = false
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    // MARK: Helpers
    func updateUI () {
        
        nameTextFiled.attributedPlaceholder = NSAttributedString(
            string: "Your Name: ",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.init(white: 1.0, alpha: 0.5)]
        )
        
        nameTextFiled.textColor = UIColor(white: 1.0, alpha: 1)
        
        nameTextFiled.text == "" ? (doneButton.isEnabled = false) : (doneButton.isEnabled = true)
        //doneButton.isEnabled ? (doneButton.backgroundColor?.ciColor.blue) :(doneButton.backgroundColor?.ciColor.red)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func dateChanged(_ sender: UIDatePicker) -> Dates {
        let components = Calendar.current.dateComponents([.year, .month, .day], from: sender.date)
        if let day = components.day, let month = components.month, let year = components.year {
            let date = Dates(day: day, month: month, year: year)
            print("\(day) \(month) \(year)")
            return date
        }
        return date
    }

    
    @objc func keyboardWillShow(sender: NSNotification) {
         self.view.frame.origin.y = -250 // Move view 150 points upward

    }

    @objc func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y = 0 // Move view to original position

    }

    @IBAction func didEditTextField(_ sender: UITextField) {
        updateUI()
        
    }
    
    @IBAction func didTapGoButton(_ sender: UIButton) {
        
        let birthDay = dateChanged(datePicker)
        userName = User(name: nameTextFiled.text!, birthday: birthDay)
        
        if let sign = userName?.choseSign(birtday: birthDay) {
            print("\(userName!.name) birthday is \(userName!.birthday.day)/\(userName!.birthday.month)/\(userName!.birthday.year) & \(sign.animal.rawValue)")
            userSign = sign
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.destination is ActualSignViewController
        {
            let vc = segue.destination as? ActualSignViewController
            vc?.userSign = userSign!
            vc?.userName = userName!.name
        }
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self,
                                                                 action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
