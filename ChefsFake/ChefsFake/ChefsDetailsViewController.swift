//
//  ChefsDetailsViewController.swift
//  ChefsFake
//
//  Created by mikewang on 2019/8/27.
//  Copyright © 2019 chiron wang. All rights reserved.
//

import UIKit

class ChefsDetailsViewController: UIViewController {

    @IBOutlet weak var bigImageView: UIImageView!
    
    public var imageName: String = "Beef"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bigImageView.image = UIImage(named: imageName)
        navigationItem.title = imageName
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
