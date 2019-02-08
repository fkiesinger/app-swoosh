//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Finn Kiesinger on 08.02.19.
//  Copyright © 2019 Finn Kiesinger. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
