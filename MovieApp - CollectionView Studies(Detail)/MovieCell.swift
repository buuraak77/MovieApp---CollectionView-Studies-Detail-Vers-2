//
//  MovieCell.swift
//  MovieApp - CollectionView Studies(Detail)
//
//  Created by Burak Yılmaz on 19.07.2022.
//

import UIKit

protocol addBasket {
    func addToBasket(indexPath:IndexPath)
}

class MovieCell: UICollectionViewCell {
    @IBOutlet var movieNameLabel: UILabel!
    @IBOutlet var movieImageLabel: UIImageView!
    @IBOutlet var moviePriceLabel: UILabel!
    
    
    var basketProtocol: addBasket?
    var indexPath: IndexPath?
    
    
    
    @IBAction func addBasketButton(_ sender: UIButton) {
        
        basketProtocol?.addToBasket(indexPath: indexPath!)
    }
}

