import UIKit

//let image = UIImage(named: "eye2.jpg")
//let imageView = UIImageView(image: image)
//let backgroundView = UIView(frame: imageView.frame)
//backgroundView.addSubview(imageView)
//let alpha: CGFloat = 0.5
//let bodyView = UIView(frame: CGRect(x: 130, y: 340, width: 450, height: 450))
//bodyView.layer.cornerRadius = bodyView.frame.width / 2
//bodyView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: alpha)
//bodyView.layer.borderWidth = 2
//backgroundView.addSubview(bodyView)

let backgroundView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))

// eyebrow
let path = UIBezierPath()
path.move(to: CGPoint(x: 4, y: 70))
path.addQuadCurve(to: CGPoint(x: 278, y: 70), controlPoint: CGPoint(x: 137, y: -40))
path.move(to: CGPoint(x: 276, y: 70))
path.addLine(to: CGPoint(x: 393, y: 70))

// eyebrow2
path.move(to: CGPoint(x: 24, y: 90))
path.addQuadCurve(to: CGPoint(x: 270, y: 90), controlPoint: CGPoint(x: 123, y: -20))
path.move(to: CGPoint(x: 270, y: 86))
path.addQuadCurve(to: CGPoint(x: 24, y: 86), controlPoint: CGPoint(x: 123, y: 160))

// eyes
path.move(to: CGPoint(x: 270, y: 88))
path.addLine(to: CGPoint(x: 393, y: 88))
path.move(to: CGPoint(x: 63, y: 110))
path.addLine(to: CGPoint(x: 63, y: 220))

// under the eyes
path.move(to: CGPoint(x: 68, y: 118))
path.addQuadCurve(to: CGPoint(x: 360, y: 210), controlPoint: CGPoint(x: 280, y: 250))
path.move(to: CGPoint(x: 360, y: 211))
path.addQuadCurve(to: CGPoint(x: 345, y: 120), controlPoint: CGPoint(x: 430, y: 150))

let eyelidLayer = CAShapeLayer()
eyelidLayer.path = path.cgPath
eyelidLayer.fillColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0).cgColor
eyelidLayer.strokeColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
eyelidLayer.lineWidth = 10

// eyeball
let eyeballPath = UIBezierPath(ovalIn: CGRect(x: 90, y: 40, width: 80, height: 80))
let eyeballLayer = CAShapeLayer()
eyeballLayer.path = eyeballPath.cgPath
eyeballLayer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor

backgroundView.layer.addSublayer(eyelidLayer)
backgroundView.layer.addSublayer(eyeballLayer)
backgroundView




