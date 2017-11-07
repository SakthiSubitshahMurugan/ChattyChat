//
//  InsertTextField.swift
//  FireBase_app
//
//  Created by Sakhti Subitshah Murugan on 10/31/17.
//  Copyright © 2017 Sakhti Subitshah Murugan. All rights reserved.
//

import UIKit

class InsertTextField: UITextField {

    private var textRectOffset:CGFloat = 0
    private var padding = UIEdgeInsetsMake(0, 20, 0, 0)
    
    override func awakeFromNib() {
        setupView()
        super.awakeFromNib()
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
     return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    func setupView(){
        let placeholder = NSAttributedString(string: self.placeholder!, attributes:[NSAttributedStringKey.foregroundColor:#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
        self.attributedPlaceholder = placeholder
    }

}
