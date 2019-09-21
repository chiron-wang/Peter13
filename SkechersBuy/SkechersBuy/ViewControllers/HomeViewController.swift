//
//  ViewController.swift
//  SkechersBuy
//
//  Created by mikewang on 2019/9/19.
//  Copyright © 2019 mikewang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playImageRepeat()
    }
    
    func playImageRepeat() {
        //圖檔名稱陣列
        let images:[UIImage] = [
            UIImage(named: "Index.jpg")!,
            UIImage(named: "Index2.jpg")!,
            UIImage(named: "Index3.jpg")!
        ]
        
        //set Animation source
        homeImageView.animationImages = images
        
        //play total time
        homeImageView.animationDuration = 15
        
        //play times
        //The default value is 0, which specifies to repeat the animation indefinitely.
        //homeImageView.animationRepeatCount = 0
        
        //start play
        homeImageView.startAnimating()
        
        //stop play
        //homeImageView()
    }


}

