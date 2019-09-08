import UIKit
var rect = CGRect(x: 0, y: 0, width: 225, height: 150)
let backgroundView = UIView(frame: rect)
backgroundView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)

// step1 top
let topCGRect = CGRect(x: 0, y: 0, width: backgroundView.frame.width, height: backgroundView.frame.height / 2)
let topView = UIView(frame: topCGRect)
topView.backgroundColor = UIColor(red: 255/255, green: 4/255, blue: 51/255, alpha: 1)

// step2 bottom
let bottomCGRect = CGRect(x: 0, y: backgroundView.frame.height / 2, width: backgroundView.frame.width, height: backgroundView.frame.height / 2)
let bottomView = UIView(frame: bottomCGRect)
bottomView.backgroundColor = UIColor(red: 0, green: 160/255, blue: 80/255, alpha: 1)

// step3 star
let path = UIBezierPath()
path.move(to: CGPoint(x: 88, y: 68))
path.addLine(to: CGPoint(x: 106, y: 68))
path.addLine(to: CGPoint(x: 112, y: 50))
path.addLine(to: CGPoint(x: 118, y: 68))
path.addLine(to: CGPoint(x: 136, y: 68))
path.addLine(to: CGPoint(x: 121, y: 78))
path.addLine(to: CGPoint(x: 126, y: 95))
path.addLine(to: CGPoint(x: 112, y: 84))
path.addLine(to: CGPoint(x: 98, y: 95))
path.addLine(to: CGPoint(x: 103, y: 78))
path.close()
let starLayer = CAShapeLayer()
starLayer.path = path.cgPath
starLayer.fillColor = UIColor(red: 255, green: 206/255, blue: 66/255, alpha: 1).cgColor
//starLayer.strokeColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
//eyelidLayer.lineWidth = 10

backgroundView.addSubview(topView)
backgroundView.addSubview(bottomView)
backgroundView.layer.addSublayer(starLayer)
backgroundView
