//
//  ViewController.swift
//  Lunar Zodiac
//
//  Created by Chris Bertram on 9/14/20.
//  Copyright © 2020 Chris Bertram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalNameLabel: UILabel!
    
    var currentYear = 2020
    var currentImageNumber = 0
    let animalNames = ["RAT", "OX", "TIGER", "RABBIT", "DRAGON", "SNAKE", "HORSE", "GOAT", "MONKEY", "ROOSTER", "DOG", "PIG"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yearLabel.text = "\(currentYear)"
        animalImageView.image = UIImage(named: animalNames[currentImageNumber])
        animalNameLabel.text = animalNames[currentImageNumber]
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        currentImageNumber = currentImageNumber + sender.tag
        if currentImageNumber < 0 {
            currentImageNumber = 11
        } else if currentImageNumber > 11 {
            currentImageNumber = 0
        }
        
        animalNameLabel.text = animalNames[currentImageNumber]

        animalImageView.image = UIImage(named: animalNames[currentImageNumber])
        
        currentYear = currentYear + sender.tag
        yearLabel.text = "\(currentYear)"
        
        }
    
}

