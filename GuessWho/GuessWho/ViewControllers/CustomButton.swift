//
//  CustomButton.swift
//  GuessWho
//
//  Created by Marc Jacques on 8/26/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//

import Foundation
import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton() {

        setTitleColor(AppearanceHelper.snowWhite, for: .normal)
        titleLabel?.font = UIFont(name: "Futura", size: 18)
        layer.cornerRadius = 25
        layer.borderWidth = 3
        layer.borderColor = AppearanceHelper.bergonia.cgColor
        backgroundColor =  AppearanceHelper.sunny
        layer.shadowRadius = 15
        layer.shadowOffset = CGSize(width: 10.5, height: 10.5)
    }

}
