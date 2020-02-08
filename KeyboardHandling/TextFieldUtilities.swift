//
//  TextFieldUtilities.swift
//  KeyboardHandling
//
//  Created by Nabil Kazi on 28/01/20.
//  Copyright © 2020 CDP India Pvt. Ltd. All rights reserved.
//

import UIKit

class UnderlinedTextField : UITextField {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        textColor = UIColor.black
    }
    
    override func draw(_ rect: CGRect) {
        
        let startingPoint   = CGPoint(x: rect.minX, y: rect.maxY)
        let endingPoint     = CGPoint(x: rect.maxX, y: rect.maxY)
        
        let path = UIBezierPath()
        
        path.move(to: startingPoint)
        path.addLine(to: endingPoint)
        path.lineWidth = 1.0
        
        UIColor.black.setStroke()
        
        path.stroke()
    }
}
