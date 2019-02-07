//
//  ViewController.swift
//  RestaurentApp
//
//  Created by apple on 07/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var itemsCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! DishCell
        cell.backgroundColor = UIColor(displayP3Red: 100.0 / 255.0, green: 220.0 / 255.0, blue: 50.0 / 255.0, alpha: 1.0)
        
        cell.titleLabel.text = "Item \(indexPath.row * 10)"
        cell.imageView.image = UIImage(named: "Rest")
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let viewWitdth = view.frame.size.width
        let cellWidth = (viewWitdth - 40 ) / 2
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
}

