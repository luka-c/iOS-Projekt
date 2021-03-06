//
//  TextFieldWithPadding.swift
//  QuizApp
//
//  Created by Luka Cicak on 13.04.2021..
//

import Foundation
import UIKit

class TextFieldWithPadding: UITextField {
    
    private var gradient: CAGradientLayer!
    
    var textPadding = UIEdgeInsets(
        top: 10,
        left: 20,
        bottom: 10,
        right: 0
    )
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height / 2.5
    }
    
}

