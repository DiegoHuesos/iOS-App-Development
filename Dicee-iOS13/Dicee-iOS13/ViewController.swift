//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI element to a class attribute
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    let diceUIImagesArray:[UIImage] = [    UIImage(imageLiteralResourceName: "DiceOne"),
                                            UIImage(imageLiteralResourceName: "DiceTwo"),
                                            UIImage(imageLiteralResourceName: "DiceThree"),
                                            UIImage(imageLiteralResourceName: "DiceFour"),
                                            UIImage(imageLiteralResourceName: "DiceFive"),
                                            UIImage(imageLiteralResourceName: "DiceSix")    ]
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = diceUIImagesArray[Int.random(in: 0...5)]
        diceImageView2.image = diceUIImagesArray.randomElement()
    }
}
