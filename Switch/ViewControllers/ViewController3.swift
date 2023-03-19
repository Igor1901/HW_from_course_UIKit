//
//  ViewController3.swift
//  Switch
//
//  Created by Игорь Пачкин on 14/3/23.
//

import UIKit

class ViewController3: UIViewController {

    let nameLabel = UILabel()
    let mainBlock1Label = UILabel()
    let priceBlock1Label = UILabel()
    let consistBlock1Label = UILabel()
    let mainBlock2Label = UILabel()
    let priceBlock2Label = UILabel()
    let consistBlock2Label = UILabel()
    let mainBlock3Label = UILabel()
    let priceBlock3Label = UILabel()
    let consistBlock3Label = UILabel()
    var switch1Label = UILabel()
    let switch2Label = UILabel()
    let firstSwitch = UISwitch()
    let payButton = UIButton()
    var fio: String!
    var number: String!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        self.nameLabel.frame = CGRect(x: 175, y: 75, width: 100, height: 16)
        self.view.addSubview(nameLabel)
        self.nameLabel.text = "Чек"
        self.nameLabel.font = .boldSystemFont(ofSize: 19)
        
        self.mainBlock1Label.frame = CGRect(x: 40, y: 175, width: 250, height: 20)
        self.view.addSubview(mainBlock1Label)
        self.mainBlock1Label.text = "Салат Цезарь"
        self.mainBlock1Label.font = .boldSystemFont(ofSize: 17)
        
        self.priceBlock1Label.frame = CGRect(x: 305, y: 175, width: 250, height: 20)
        self.view.addSubview(priceBlock1Label)
        self.priceBlock1Label.text = "300р"
        self.priceBlock1Label.font = .systemFont(ofSize: 17)
        
        self.consistBlock1Label.frame = CGRect(x: 40, y: 200, width: 300, height: 20)
        self.view.addSubview(consistBlock1Label)
        self.consistBlock1Label.text = "Помидоры, салат айсберг, сухарики, курица"
        self.consistBlock1Label.font = .systemFont(ofSize: 13)
        self.consistBlock1Label.textColor = .gray
        
        self.mainBlock2Label.frame = CGRect(x: 40, y: 250, width: 250, height: 20)
        self.view.addSubview(mainBlock2Label)
        self.mainBlock2Label.text = "Салат Греческий"
        self.mainBlock2Label.font = .boldSystemFont(ofSize: 17)
        
        self.priceBlock2Label.frame = CGRect(x: 305, y: 250, width: 250, height: 20)
        self.view.addSubview(priceBlock2Label)
        self.priceBlock2Label.text = "450р"
        self.priceBlock2Label.font = .systemFont(ofSize: 17)
        
        self.consistBlock2Label.frame = CGRect(x: 40, y: 275, width: 300, height: 20)
        self.view.addSubview(consistBlock2Label)
        self.consistBlock2Label.text = "Помидоры, перец сладкий, сыр, огурцы"
        self.consistBlock2Label.font = .systemFont(ofSize: 13)
        self.consistBlock2Label.textColor = .gray
        
        self.mainBlock3Label.frame = CGRect(x: 40, y: 325, width: 250, height: 20)
        self.view.addSubview(mainBlock3Label)
        self.mainBlock3Label.text = "Шашлык из говядины"
        self.mainBlock3Label.font = .boldSystemFont(ofSize: 17)
        
        self.priceBlock3Label.frame = CGRect(x: 305, y: 325, width: 250, height: 20)
        self.view.addSubview(priceBlock3Label)
        self.priceBlock3Label.text = "650р"
        self.priceBlock3Label.font = .systemFont(ofSize: 17)
        
        self.consistBlock3Label.frame = CGRect(x: 40, y: 350, width: 300, height: 20)
        self.view.addSubview(consistBlock3Label)
        self.consistBlock3Label.text = "450 грамм говядины, лук репчатый"
        self.consistBlock3Label.font = .systemFont(ofSize: 13)
        self.consistBlock3Label.textColor = .gray
        
        self.switch1Label.frame = CGRect(x: 40, y: 615, width: 250, height: 50)
        self.view.addSubview(switch1Label)
        self.switch1Label.text = fio
        self.switch1Label.textColor = .black
        
        
        
        
        self.firstSwitch.frame = CGRect(x: 305, y: 615, width: 0, height: 0)
        self.view.addSubview(firstSwitch)
        
        self.payButton.frame = CGRect(x: 75, y: 700, width: 250, height: 50)
        self.view.addSubview(payButton)
        self.payButton.backgroundColor = .systemGreen
        self.payButton.setTitle("Итого: 1400 руб", for: .normal)
        self.payButton.layer.cornerRadius = 5
        self.payButton.setTitleColor(UIColor.white, for: .normal)
        
    }
    

    

}
