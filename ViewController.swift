//
//  ViewController.swift
//  The Lord of The Rings
//
//  Created by Furkan Ceylan on 22.05.2022.
//

import UIKit

class ViewController: UIViewController {

    let imgView = UIImageView()
    let explanation = UILabel()
    let characterLabel = UILabel()
    
    var images = ["legolas" : "Legolas","gandalf" : "Gandalf","frodo" : "Frodo Beggins","aragorn" : "Aragorn"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = view.frame.size.width
        let height = view.frame.size.height
        view.backgroundColor = UIColor.lightGray
        let gestureRecognaizer = UITapGestureRecognizer(target: self, action: #selector(changeImg))
        imgView.backgroundColor = .white
        imgView.frame = CGRect(x: width * 0.1, y: height * 0.1, width: width * 0.8, height: height * 0.4)
        imgView.layer.masksToBounds = true
        imgView.layer.cornerRadius = height / 40
        imgView.isUserInteractionEnabled = true
        
        imgView.addGestureRecognizer(gestureRecognaizer)
        
        explanation.text = ""
        explanation.frame = CGRect(x: (width * 0.5) - ((width * 0.8) / 2) , y: height * 0.6 - 34 / 2, width: width * 0.8, height: 34)
        explanation.textColor = .black
        explanation.textAlignment = .center
        
        characterLabel.text = ""
        characterLabel.textColor = .black
        characterLabel.textAlignment = .left
        characterLabel.numberOfLines = 10
        characterLabel.textColor = .white
        characterLabel.frame = CGRect(x: (width * 0.5) - (width * 0.8 / 2), y: (height * 0.8) - (height * 0.5 / 2), width: width * 0.8, height: height * 0.5)
        view.addSubview(characterLabel)
        view.addSubview(imgView)
        view.addSubview(explanation)
        
    }
    
    @objc func changeImg(){
        if imgView.image == UIImage(named: ""){
            imgView.image = UIImage(named: "legolas")
            explanation.text = images["legolas"]
            characterLabel.text = """
                Legolas was a Sindar Elf who was part of the Fellowship of the Ring in the Third Age. Son of the Elvenking Thranduil of Mirkwood, Legolas was Mirkwood's prince, a messenger, and a master archer.
            """
        }else if imgView.image == UIImage(named: "legolas"){
            imgView.image = UIImage(named: "gandalf")
            explanation.text = images["gandalf"]
            characterLabel.text = """
                Gandalf the Grey, later known as Gandalf the White, and originally named Olórin (Quenya; IPA: [oˈloːrin]), was an Istar (Wizard), dispatched to Middle-earth in the Third Age to combat the threat of Sauron.
            """
        }else if imgView.image == UIImage(named: "gandalf"){
            imgView.image = UIImage(named: "frodo")
            explanation.text = images["frodo"]
            characterLabel.text = """
                Frodo Baggins, son of Drogo Baggins, was a hobbit of the Shire in the late Third Age.
            """
        }else if imgView.image == UIImage(named: "frodo"){
            imgView.image = UIImage(named: "Aragorn")
            explanation.text = images["aragorn"]
            characterLabel.text = """
                Aragorn II, son of Arathorn II and Gilraen, also known as Elessar and Strider, was the 16th and last Chieftain of the Dúnedain of the North; later crowned King Elessar Telcontar (March 1, 2931 - FO 120 or SR 1541), the 26th King of Arnor, 35th King of Gondor and first High King of Gondor and Arnor since the short reign of Isildur.
            """
        }else{
            imgView.image = UIImage(named: "legolas")
            explanation.text = "Legolas"
            characterLabel.text = """
                Legolas was a Sindar Elf who was part of the Fellowship of the Ring in the Third Age. Son of the Elvenking Thranduil of Mirkwood, Legolas was Mirkwood's prince, a messenger, and a master archer.
            """
        }
        
    }


}

