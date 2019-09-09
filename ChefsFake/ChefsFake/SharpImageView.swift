//
//  SharpImageView.swift
//  ChefsFake
//
//  Created by mikewang on 2019/9/9.
//  Copyright © 2019 chiron wang. All rights reserved.
//

import UIKit

class SharpImageView: UIImageView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: bounds.width * 0.7, y: 0))
        path.addLine(to: CGPoint(x: bounds.width, y: 0))
        path.addLine(to: CGPoint(x: bounds.width, y: bounds.height))
        path.addLine(to: CGPoint(x: 0, y: bounds.height))
        path.addLine(to: CGPoint(x: 0, y: bounds.height * 0.2))
        path.close()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        layer.mask = shapeLayer
    }

}
