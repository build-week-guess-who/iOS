//
//  MainViewController.swift
//  GuessWho
//
//  Created by Luqmaan Khan on 8/26/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//

import UIKit
import Foundation

class MainViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Setup background falling twitter birds
        let twitterBird = TwiterBirdView()
        twitterBird.twitterImage = UIImage(named: "twitterBird")
        twitterBird.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(twitterBird)
        view.sendSubviewToBack(twitterBird)
        NSLayoutConstraint.activate([twitterBird.leadingAnchor.constraint(equalTo: view.leadingAnchor),twitterBird.trailingAnchor.constraint(equalTo: view.trailingAnchor),twitterBird.topAnchor.constraint(equalTo: view.topAnchor), twitterBird.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
        //setup focal view appearance
        mainView.layer.cornerRadius = 15
        mainView.layer.borderWidth = 5
        mainView.layer.borderColor = AppearanceHelper.bergonia.cgColor
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
