//
//  ViewController.swift
//  Alert
//
//  Created by Игорь Пачкин on 8/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var guessLabel: UILabel!
    
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        alertName(title: "HI", message: "What is you name?", style: .alert)
    }
    
    @IBAction func sumButton(_ sender: UIButton) {
        self.resultLabel.text = "Result: "
        self.alert(title: "Sum", message: "Enter 2 numbers", style: .alert)
    }
    
    @IBAction func guessButton(_ sender: UIButton) {
        self.guessNumber(title: "Guess", message: "0...9", style: .alert)
    }
    
    // Name
    func alertName(title: String, message: String, style: UIAlertController.Style){
        let alertControler2 = UIAlertController(title: title, message: message, preferredStyle: style)
        let action2 = UIAlertAction(title: "Ok", style: .default) { (action2) in
            let name = alertControler2.textFields?.first
            self.nameLabel.text! += name?.text ?? "nil"
        }
        alertControler2.addTextField{ (textFields) in
        }
        alertControler2.addAction(action2)
        self.present(alertControler2, animated: true, completion: nil)
    }
    
    // Sum
    func alert(title: String, message: String, style: UIAlertController.Style){
        let alertControler = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            let number1 = alertControler.textFields?.first
            let number2 = alertControler.textFields?[1]
            self.resultLabel.text! += String( Int(number1?.text ?? "0")! + Int(number2?.text ?? "0")!)
        }
        alertControler.addTextField{ (textFields) in
        }
        alertControler.addTextField{ (textFields) in
        }
        alertControler.addAction(action)
        self.present(alertControler, animated: true, completion: nil)
    }
    
    
    // Guess
    var random = String(Int.random(in: 0...9))
    
    func guessNumber(title: String, message: String, style: UIAlertController.Style){
        let alertControler3 = UIAlertController(title: title, message: message, preferredStyle: style)
        let action3 = UIAlertAction(title: "Guess", style: .default) { (action3) in
            let number = alertControler3.textFields?.first
            if number?.text! == self.random {
                self.guessLabel.text = "Correct!!!"
                self.random = String(Int.random(in: 0...9))
            } else {
                self.guessLabel.text = "Wrong"
            }
        }
        alertControler3.addTextField{ (textFields) in
        }
        alertControler3.addAction(action3)
        self.present(alertControler3, animated: true, completion: nil)
    }
        
    
}
    
