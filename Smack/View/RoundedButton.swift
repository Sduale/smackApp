//
//  RoundedButton.swift
//  Smack
//
//  Created by nopcallowed on 1/18/18.
//  Copyright © 2018 GASHAN INC. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setUpView()
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setUpView()
    }
    
    func setUpView(){
        self.layer.cornerRadius = cornerRadius
    }


}
