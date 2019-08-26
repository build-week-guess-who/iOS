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

    var twitterBirds: [UIImageView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupBackground()
    }
    func setupBackground() {
        for twitterImage in 1...5 {
            let twitterBird = UIImage(named: "twitterBird")
            let imageView = UIImageView(image: twitterBird)
            let imageRect: CGRect = CGRect(x: 50, y: 50, width: 49, height: 49)
            imageView.frame = imageRect
            self.view.addSubview(imageView)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            let topConstraint = imageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
            twitterBirds.append(imageView)
            twitterBirds[0].leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
            twitterBirds[1].leadingAnchor.constraint(equalTo: twitterBirds[0].trailingAnchor, constant: 10).isActive = true
            twitterBirds[2].leadingAnchor.constraint(equalTo: twitterBirds[1].trailingAnchor, constant: 10).isActive = true
            twitterBirds[3].leadingAnchor.constraint(equalTo: twitterBirds[2].trailingAnchor, constant: 10).isActive = true
            twitterBirds[4].leadingAnchor.constraint(equalTo: twitterBirds[3].trailingAnchor, constant: 10).isActive = true
            twitterBirds[5].leadingAnchor.constraint(equalTo: twitterBirds[4].trailingAnchor, constant: 10).isActive = true
            UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat, .autoreverse], animations: {
                imageView.alpha = 0.5
            }, completion: nil)
            UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat,.autoreverse], animations: {
                imageView.alpha = 1
            }, completion: nil)
        }
    }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


