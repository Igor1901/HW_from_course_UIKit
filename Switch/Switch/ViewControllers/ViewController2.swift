//
//  ViewController2.swift
//  Switch
//
//  Created by Игорь Пачкин on 4/3/23.
//

import UIKit

class ViewController2: UIViewController {

    let nameLabel = UILabel()
    let fioLabel = UILabel()
    let fio = UITextField()
    let countPeopleLabel = UILabel()
    let countPeople = UITextField()
    let numberLabel = UILabel()
    let numbet = UITextField()
    let firstSwitchLebel = UILabel()
    let firstSwitch = UISwitch()
    let secondSwitchLebel = UILabel()
    let secondSwitch = UISwitch()
    let thirdSwitchLebel = UILabel()
    let thirdSwitch = UISwitch()
    let billButton = UIButton()
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.nameLabel.frame = CGRect(x: 150, y: 75, width: 100, height: 16)
        self.view.addSubview(nameLabel)
        self.nameLabel.text = "Cafe Mario"
        self.nameLabel.font = .boldSystemFont(ofSize: 19)
        
        self.fioLabel.frame = CGRect(x: 75, y: 150, width: 100, height: 16)
        self.view.addSubview(fioLabel)
        self.fioLabel.text = "ФИО"
        self.fioLabel.textColor = .red
        
        self.fio.frame = CGRect(x: 75, y: 175, width: 250, height: 35)
        self.view.addSubview(fio)
        self.fio.borderStyle = .roundedRect
        self.fio.placeholder = "Иванов Иван Иванович"
        
        
        self.countPeopleLabel.frame = CGRect(x: 75, y: 265, width: 250, height: 16)
        self.view.addSubview(countPeopleLabel)
        self.countPeopleLabel.text = "Количество гостей"

        self.countPeopleLabel.textColor = .red
        
        self.countPeople.frame = CGRect(x: 75, y: 290, width: 250, height: 35)
        self.view.addSubview(countPeople)
        self.countPeople.borderStyle = .roundedRect
        self.countPeople.placeholder = "Введите колличество"
        
        self.numberLabel.frame = CGRect(x: 75, y: 380, width: 250, height: 16)
        self.view.addSubview(numberLabel)
        self.numberLabel.text = "Номер стола"
        self.numberLabel.textColor = .red
        
        self.numbet.frame = CGRect(x: 75, y: 405, width: 250, height: 35)
        self.view.addSubview(numbet)
        self.numbet.borderStyle = .roundedRect
        self.numbet.placeholder = "Стол номер"
        
        
        self.firstSwitchLebel.frame = CGRect(x: 90, y: 495, width: 250, height: 16)
        self.view.addSubview(firstSwitchLebel)
        self.firstSwitchLebel.text = "Бронировали стол?"
        self.firstSwitchLebel.textColor = .red
        
        self.firstSwitch.frame = CGRect(x: 275, y: 488, width: 0, height: 0)
        self.view.addSubview(firstSwitch)
        
        self.secondSwitchLebel.frame = CGRect(x: 90, y: 555, width: 250, height: 16)
        self.view.addSubview(secondSwitchLebel)
        self.secondSwitchLebel.text = "Предоплата?"
        self.secondSwitchLebel.textColor = .red
        
        self.secondSwitch.frame = CGRect(x: 275, y: 548, width: 0, height: 0)
        self.view.addSubview(secondSwitch)
        
        self.thirdSwitchLebel.frame = CGRect(x: 90, y: 615, width: 250, height: 16)
        self.view.addSubview(thirdSwitchLebel)
        self.thirdSwitchLebel.text = "VIP комната?"
        self.thirdSwitchLebel.textColor = .red
        
        self.thirdSwitch.frame = CGRect(x: 275, y: 608, width: 0, height: 0)
        self.view.addSubview(thirdSwitch)
        
        self.billButton.frame = CGRect(x: 75, y: 700, width: 250, height: 50)
        self.view.addSubview(billButton)
        self.billButton.backgroundColor = .red
        self.billButton.setTitle("Выставить счет", for: .normal)
        self.billButton.layer.cornerRadius = 5
        self.billButton.setTitleColor(UIColor.white, for: .normal)
        // self.loginButton.titleLabel
        self.billButton.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
    }
    
    
    
     @objc func buttonClick(){
         if fio.text!.isEmpty || countPeople.text!.isEmpty || numbet.text!.isEmpty{
             let alert = UIAlertController(title: "Ошибка", message: "Заполните все поля", preferredStyle: .alert)
             let alertAction = UIAlertAction(title: "Ок", style: .default)
             alert.addAction(alertAction)
             self.present(alert, animated: true)
         }
         let alert = UIAlertController(title: "Выставить счет?", message: "", preferredStyle: .alert)
         let alertCancelButton = UIAlertAction(title: "Отмена", style: .default)
         let alertBillButton = UIAlertAction(title: "Да", style: .default){ _ in
             let thirdController = ViewController3()
             thirdController.fio = self.fio.text ?? ""
             thirdController.number = self.numbet.text ?? ""
             self.navigationController?.pushViewController(thirdController, animated: true)
         }
         alert.addAction(alertBillButton)
         alert.addAction(alertCancelButton)
         self.present(alert, animated: true)
         
         
         
     }

     

}
