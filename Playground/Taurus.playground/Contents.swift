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

// pic 4
let starImage4 = UIImage(named: "star.png")
let starImageView4 = UIImageView(image: starImage4)
let aquariusImage1 = UIImage(named: "aquarius.png")
let aquariusImageView1 = UIImageView(image: aquariusImage1)
starImageView4.mask = aquariusImageView1

let blueView4 = UIView(frame: aquariusImageView1.frame)
blueView4.backgroundColor = UIColor(red: 0/255, green: 255/255, blue: 255/255, alpha: 0.5)
let aquariusImage2 = UIImage(named: "aquarius.png")
let aquariusImageView2 = UIImageView(image: aquariusImage2)
blueView4.mask = aquariusImageView2
starImageView4.addSubview(blueView4)
starImageView4
