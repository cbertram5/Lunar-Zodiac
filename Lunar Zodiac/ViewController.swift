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
    var currentYear = 2020
    var currentImageNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animalImageView.image = UIImage(named: "image0")
        yearLabel.text = "\(currentYear)"
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        currentImageNumber = currentImageNumber + sender.tag
        if currentImageNumber < 0 {
            currentImageNumber = 11
        } else if currentImageNumber > 11 {
            currentImageNumber = 0
        }

        animalImageView.image = UIImage(named: "image\(currentImageNumber)")
        
        currentYear = currentYear + sender.tag
        yearLabel.text = "\(currentYear)"
        
        }
    
}

