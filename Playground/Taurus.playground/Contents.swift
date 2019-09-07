import UIKit

// pic1
let starImage = UIImage(named: "star.png")
let starImageView = UIImageView(image: starImage)
let taurusImage = UIImage(named: "taurus.png")
let taurusImageView = UIImageView(image: taurusImage)
starImageView.mask = taurusImageView
starImageView

// pic2
let blueView = UIView(frame: starImageView.frame)
blueView.backgroundColor = UIColor(red: 0, green: 0, blue: 1, alpha: 0.5)
let taurusImageView2 = UIImageView(image: taurusImage)
blueView.mask = taurusImageView2
starImageView.addSubview(blueView)
starImageView

// pic3
let starImage3 = UIImage(named: "star.png")
let starImageView3 = UIImageView(image: starImage3)
let taurusImage3 = UIImage(named: "taurus.png")
let taurusImageView3 = UIImageView(image: taurusImage3)
starImageView3.mask = taurusImageView3

let fireImage = UIImage(named: "fire.jpg")
let fireImageView = UIImageView(image: fireImage)
fireImageView.alpha = 0.5
let taurusImage4 = UIImage(named: "taurus.png")
let taurusImageView4 = UIImageView(image: taurusImage4)
fireImageView.mask = taurusImageView4
let backgroundView = UIView(frame: starImageView.frame)
backgroundView.addSubview(starImageView3)
backgroundView.addSubview(fireImageView)
backgroundView
