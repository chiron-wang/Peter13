import UIKit

// part1
//let aDegree = CGFloat.pi / 180
//let lineWidth: CGFloat = 10
//let radius: CGFloat = 50
//let startDegree: CGFloat = 270
//
//let circlePath = UIBezierPath(ovalIn: CGRect(x: lineWidth, y: lineWidth, width: radius*2, height: radius*2))
//let circleLayer = CAShapeLayer()
//circleLayer.path = circlePath.cgPath
//circleLayer.strokeColor = UIColor.gray.cgColor
//circleLayer.lineWidth = lineWidth
//circleLayer.fillColor = UIColor.clear.cgColor
//
//let percentage: CGFloat = 60
//let percentagePath = UIBezierPath(arcCenter: CGPoint(x: lineWidth + radius, y: lineWidth + radius), radius: radius, startAngle: aDegree * startDegree, endAngle: aDegree * (startDegree + 360 * percentage / 100), clockwise: true)
//let percentageLayer = CAShapeLayer()
//percentageLayer.path = percentagePath.cgPath
//percentageLayer.strokeColor  = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
//percentageLayer.lineWidth = lineWidth
//percentageLayer.fillColor = UIColor.clear.cgColor
//
//let label = UILabel(frame: CGRect(x: 0, y: 0, width: 2*(radius+lineWidth), height: 2*(radius+lineWidth)))
//label.textAlignment = .center
//label.text = "\(percentage)%"
//let view = UIView(frame: label.frame)
//view.layer.addSublayer(circleLayer)
//view.layer.addSublayer(percentageLayer)
//view.addSubview(label)
//view

// part2
//let aDegree = CGFloat.pi / 180
//let lineWidth: CGFloat = 40
//let radius: CGFloat = 50
//var startDegree: CGFloat = 270
//let view = UIView(frame: CGRect(x: 0, y: 0, width: 2*(radius+lineWidth), height: 2*(radius+lineWidth)))
//let center = CGPoint(x: lineWidth + radius, y: lineWidth + radius)
//var percentages: [CGFloat] = [30, 30, 40]
//for percentage in percentages {
//    let endDegree = startDegree + 360 * percentage / 100
//    let percentagePath = UIBezierPath(arcCenter: center, radius: radius, startAngle: aDegree * startDegree, endAngle: aDegree * endDegree, clockwise: true)
//    let percentageLayer = CAShapeLayer()
//    percentageLayer.path = percentagePath.cgPath
//    percentageLayer.strokeColor  = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1).cgColor
//    percentageLayer.lineWidth = lineWidth
//    percentageLayer.fillColor = UIColor.clear.cgColor
//    view.layer.addSublayer(percentageLayer)
//    startDegree = endDegree
//}
//view

// part3
//let aDegree = CGFloat.pi / 180
//let lineWidth: CGFloat = 40
//let radius: CGFloat = 50
//var startDegree: CGFloat = 270
////let view = UIView(frame: CGRect(x: 0, y: 0, width: 2*(radius+lineWidth), height: 2*(radius+lineWidth)))
//let center = CGPoint(x: lineWidth + radius, y: lineWidth + radius)
//
//func createLabel(percentage: CGFloat, startDegree: CGFloat) -> UILabel {
//    let textCenterDegree = startDegree + 360 * percentage / 2 / 100
//    let textPath = UIBezierPath(arcCenter: center, radius: radius, startAngle: aDegree * textCenterDegree, endAngle: aDegree * textCenterDegree, clockwise: true)
//    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 30))
//    label.backgroundColor = UIColor.yellow
//    label.font = UIFont.systemFont(ofSize: 8)
//    label.text = "\(percentage)%"
//    label.sizeToFit()
//    label.center = textPath.currentPoint
//    return label
//}
//
//let circlePath = UIBezierPath(ovalIn: CGRect(x: lineWidth, y: lineWidth, width: radius*2, height: radius*2))
//let circleLayer = CAShapeLayer()
//circleLayer.path = circlePath.cgPath
//circleLayer.strokeColor = UIColor.gray.cgColor
//circleLayer.lineWidth = lineWidth
//circleLayer.fillColor = UIColor.clear.cgColor
//
//let percentage: CGFloat = 60
//let percentagePath = UIBezierPath(arcCenter: CGPoint(x: lineWidth + radius, y: lineWidth + radius), radius: radius, startAngle: aDegree * startDegree, endAngle: aDegree * (startDegree + 360 * percentage / 100), clockwise: true)
//let percentageLayer = CAShapeLayer()
//percentageLayer.path = percentagePath.cgPath
//percentageLayer.strokeColor  = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
//percentageLayer.lineWidth = lineWidth
//percentageLayer.fillColor = UIColor.clear.cgColor
//
//let label = UILabel(frame: CGRect(x: 0, y: 0, width: 2*(radius+lineWidth), height: 2*(radius+lineWidth)))
//label.textAlignment = .center
////label.text = "\(percentage)%"
//let view = UIView(frame: label.frame)
//view.layer.addSublayer(circleLayer)
//view.layer.addSublayer(percentageLayer)
//view.addSubview(label)
//
//let label1 = createLabel(percentage: percentage, startDegree: startDegree)
//let label2 = createLabel(percentage: 40, startDegree: 120)
//view.addSubview(label1)
//view.addSubview(label2)
//view

// part4
let aDegree = CGFloat.pi / 180
let radius: CGFloat = 50
var startDegree: CGFloat = 270
let view = UIView(frame: CGRect(x: 0, y: 0, width: 2*(radius), height: 2*(radius)))
var percentages: [CGFloat] = [25, 40, 35]
for percentage in percentages {
    let endDegree = startDegree + 360 * percentage / 100
    let percentagePath = UIBezierPath()
    percentagePath.move(to: view.center)
    percentagePath.addArc(withCenter: view.center, radius: radius, startAngle: aDegree * startDegree, endAngle: aDegree * endDegree, clockwise: true)
    let percentageLayer = CAShapeLayer()
    percentageLayer.path = percentagePath.cgPath
    percentageLayer.fillColor  = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1).cgColor
    view.layer.addSublayer(percentageLayer)
    startDegree = endDegree
}
view
