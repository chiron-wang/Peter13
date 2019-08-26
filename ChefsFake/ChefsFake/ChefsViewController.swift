//
//  ChefsViewController.swift
//  ChefsFake
//
//  Created by mikewang on 2019/8/26.
//  Copyright © 2019 chiron wang. All rights reserved.
//

import UIKit

class ChefsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let imageNames = ["Beef", "Chicken", "Pork"]
    var imageIndexs: [Int] = []
    private let reuseIdentifier = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let width = (view.bounds.width - 1 * 2) / 3
        let flowLayout = collectionView.collectionViewLayout.self as? UICollectionViewFlowLayout
        flowLayout?.itemSize = CGSize(width: width, height: width)
        flowLayout?.estimatedItemSize = .zero
        
        self.collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
    }
    
    // MARK: - CollectionView
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 21
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(ChefsCollectionViewCell.self)", for: indexPath) as! ChefsCollectionViewCell
        let index = Int.random(in: 0...2)
        imageIndexs.append(index)
        let imageName = imageNames[index]
        cell.chefsImageView.image = UIImage(named: imageName)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "wall2Segue" {
            guard let chefsDetails = segue.destination as? ChefsDetailsViewController else { return }
            guard let indexPath = collectionView.indexPathsForSelectedItems else { return }
            let index = imageIndexs[indexPath[0].item]
            let imageName = imageNames[index]
            
            chefsDetails.imageName = imageName
        } else {
            guard let chefsDetails = segue.destination as? ChefsDetailsViewController else { return }
            guard let indexPath = collectionView.indexPathsForSelectedItems else { return }
            let index = imageIndexs[indexPath[0].item]
            let imageName = imageNames[index]
            
            chefsDetails.imageName = imageName
        }
        
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
