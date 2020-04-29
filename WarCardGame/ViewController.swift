//
//  ViewController.swift
//  WarCardGame
//
//  Created by sisitha jayawardhane on 4/23/20.
//  Copyright © 2020 Sisitha Jayawardhane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LeftIImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    @IBOutlet weak var LeftPlayerScore: UILabel!
    
    @IBOutlet weak var RightPlayerScore: UILabel!
    
    var LeftScore = 0
    var RightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TradeTapped(_ sender: Any) {
        
        //Randomized the numbers
        let LeftNumber = Int.random(in: 1...13)
        let RightNumber = Int.random(in: 1...13)
        //Update the image views
        LeftIImageView.image = UIImage(named: "card\(LeftNumber)")
        RightImageView.image = UIImage(named: "card\(RightNumber)")
        //Compare the random numbers
        if LeftNumber > RightNumber{
            LeftScore += 1
            LeftPlayerScore.text = String(LeftScore)
        }
        else if RightNumber > LeftNumber{
            RightScore += 1
            RightPlayerScore.text = String(RightScore)
        }
        else{
            LeftScore += 1
            RightScore += 1
            LeftPlayerScore.text = String(LeftScore)
            RightPlayerScore.text = String(RightScore)
        }
        
    }
    
    

}

