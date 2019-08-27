//
//  InstructionsView.swift
//  GuessWho
//
//  Created by Luqmaan Khan on 8/26/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//

import UIKit

class InstructionsView: UIView {

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       self.backgroundColor = AppearanceHelper.bergonia
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let howToPlayLabel = UILabel(frame: CGRect(x: 46, y: 460, width: 209, height: 48))
        howToPlayLabel.font = AppearanceHelper.futuraFont(textStyle: .callout, pointSize: 35)
        howToPlayLabel.textColor = AppearanceHelper.sunny
        howToPlayLabel.text = "How To Play"
        self.addSubview(howToPlayLabel)
    }
 

}
