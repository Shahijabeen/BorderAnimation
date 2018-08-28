//
//  ViewController.swift
//  borderAnimation
//
//  Created by Shahida Anwar on 08/08/2018.
//  Copyright © 2018 Nordicomm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    weak var shapelayer: CAShapeLayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.shapelayer?.removeFromSuperlayer()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 134, y: 209))
        path.addLine(to: CGPoint(x: (131 + 93), y: 209))
        path.addQuadCurve(to: CGPoint(x: (131 + 97), y: 212) , controlPoint: CGPoint(x: (131 + 93), y: 209))
        path.addLine(to: CGPoint(x: (131 + 97) , y: (209 + 33 )))
        path.addQuadCurve(to: CGPoint(x: (131 + 93), y: (209 + 37)), controlPoint:  CGPoint(x: (131 + 97) , y: (209 + 33 )))
        path.addLine(to: CGPoint(x: 135, y: (209 + 37)))
        path.addQuadCurve(to: CGPoint(x: 131, y: 209 + 33), controlPoint: CGPoint(x: 135, y: 209 + 37))
        path.addLine(to: CGPoint(x: 131, y: 213))
        path.addQuadCurve(to: CGPoint(x: 134, y: 209), controlPoint:CGPoint(x: 131, y: 213) )
         let shapelayer = CAShapeLayer()
        shapelayer.fillColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        shapelayer.strokeColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1).cgColor
        shapelayer.lineWidth = 2
        shapelayer.path = path.cgPath
        view.layer.addSublayer(shapelayer)
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.duration = 3
        shapelayer.add(animation, forKey: "MyAnimation")
        self.shapelayer = shapelayer
        
        
        
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

