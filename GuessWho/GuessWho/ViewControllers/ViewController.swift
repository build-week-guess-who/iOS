//
//  ViewController.swift
//  GuessWho
//
//  Created by Marc Jacques on 8/26/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: CustomButton!
    @IBOutlet weak var button2: CustomButton!
    @IBOutlet weak var button3: CustomButton!
  
    @IBOutlet weak var heart1: UIImageView!
    @IBOutlet weak var heart3: UIImageView!
    @IBOutlet weak var heart2: UIImageView!
    @IBOutlet weak var viewlayer: UIView!
    @IBOutlet weak var tweetLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLevelLabel()
        viewlayer.layer.borderWidth = 3
        viewlayer.layer.borderColor = AppearanceHelper.bergonia.cgColor
        viewlayer.layer.cornerRadius = 10
        
        progressBar.layer.cornerRadius = 10
        
        button3.layoutSubviews()
    }
    @IBAction func button1(_ sender: UIButton) {
    }
    @IBAction func button2(_ sender: UIButton) {
    }
    @IBAction func button3(_ sender: UIButton) {
    }
    
    
    func updateLevelLabel () {
        levelLabel.layer.cornerRadius = 25
        levelLabel.layer.borderWidth = 3
        levelLabel.layer.borderColor = AppearanceHelper.bergonia.cgColor
        levelLabel.backgroundColor =  AppearanceHelper.sunny
        levelLabel.layer.shadowRadius = 15
        levelLabel.layer.shadowOffset = CGSize(width: 10.5, height: 10.5)
    }

}
