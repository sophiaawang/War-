//
//  ViewController.swift
//  War!
//
//  Created by Sophia Wang on 2/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var PlayerCard: UIImageView!
    @IBOutlet weak var ComputerCard: UIImageView!
    
    
    @IBOutlet weak var PlayerScore: UILabel!
    @IBOutlet weak var ComputerScore: UILabel!
    
    var scorePlayer = 0
    var scoreComputer = 0
    
    @IBAction func ShuffleButton(_ sender: Any) {
        let player = Int.random(in: 0...12)
        let computer = Int.random(in: 0...12)
        PlayerCard.image = [#imageLiteral(resourceName: "14"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "6"), #imageLiteral(resourceName: "7"), #imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "9"), #imageLiteral(resourceName: "10"), #imageLiteral(resourceName: "11"), #imageLiteral(resourceName: "12"), #imageLiteral(resourceName: "13")][player]
        ComputerCard.image = [#imageLiteral(resourceName: "14"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "6"), #imageLiteral(resourceName: "7"), #imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "9"), #imageLiteral(resourceName: "10"), #imageLiteral(resourceName: "11"), #imageLiteral(resourceName: "12"), #imageLiteral(resourceName: "13")][computer]
        if player > computer {
            scorePlayer+=1
            PlayerScore.text = String(scorePlayer)
        }else if computer>player{
            scoreComputer+=1
            ComputerScore.text = String(scoreComputer)
        }
    
    }


}

