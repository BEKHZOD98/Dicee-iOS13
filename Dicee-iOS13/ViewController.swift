//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //IB - interface building outlet connected
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var upperLogoImage: UIImageView!
    
    var leftDiceNumber = 1
    var rightRestartNumber = 0
    var collection = [ #imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree") , #imageLiteral(resourceName: "DiceFour") , #imageLiteral(resourceName: "DiceFive") , #imageLiteral(resourceName: "DiceSix") ]
    var logoCollection = [ #imageLiteral(resourceName: "DiceeLogo"), #imageLiteral(resourceName: "Ghoster")]
    override func viewDidLoad() {
        super.viewDidLoad()
       /* //who.what = value #imageLiteral(resourceName: "DiceSix")
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceOne")
        diceImageViewOne.alpha = 0.5
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceOne")*/
        
        
    }

    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //diceImageViewOne.image = #imageLiteral(resourceName: "DiceFour")
        //diceImageViewTwo.image = #imageLiteral(resourceName: "DiceTwo")
        upperLogoImage.image = logoCollection[Int.random(in: 0...1)]
        
        //diceImageViewOne.image = collection[leftDiceNumber]
        diceImageViewOne.image = collection.randomElement()
        print("left: \(collection.randomElement())")
        leftDiceNumber += 1
        if(leftDiceNumber == 6){
            leftDiceNumber = 0
        }
        diceImageViewTwo.image = [ #imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree") , #imageLiteral(resourceName: "DiceFour") , #imageLiteral(resourceName: "DiceFive") , #imageLiteral(resourceName: "DiceSix") ][rightRestartNumber]
        rightRestartNumber = Int.random(in: 0...5)
        print("right: \(rightRestartNumber)")
        
        if(rightRestartNumber >= 6){
            rightRestartNumber = 0
        }
        
        
    }
    /*
    @IBAction func restartButtonPressed(_ sender: UIButton) {
        //diceImageViewOne.image = #imageLiteral(resourceName: "DiceOne")
        //diceImageViewTwo.image = #imageLiteral(resourceName: "DiceOne")
        diceImageViewOne.image = [ #imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree") , #imageLiteral(resourceName: "DiceFour") , #imageLiteral(resourceName: "DiceFive") , #imageLiteral(resourceName: "DiceSix") ][rightRestartNumber - 1]
        rightRestartNumber -= 1
        if(rightRestartNumber == 1){
            rightRestartNumber = 6
        }
    }*/
}

