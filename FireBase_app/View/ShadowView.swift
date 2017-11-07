//
//  ShadowView.swift
//  FireBase_app
//
//  Created by Sakhti Subitshah Murugan on 10/31/17.
//  Copyright © 2017 Sakhti Subitshah Murugan. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        setupView()
        super.awakeFromNib()
    }
    
    func setupView(){
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius =  5
        self.layer.shadowColor = UIColor.black.cgColor
    }

}
