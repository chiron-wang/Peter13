import UIKit
let image1 = UIImage(named: "Wukong2.png")
let wukongImageView = UIImageView(image: image1)
wukongImageView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)

let patternImageView = UIImageView(frame: wukongImageView.frame)
patternImageView.image = UIImage(named: "pattern.jpg")
patternImageView.addSubview(wukongImageView)
wukongImageView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.4)

wukongImageView
patternImageView

