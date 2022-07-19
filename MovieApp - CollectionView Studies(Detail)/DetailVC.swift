//
//  DetailVC.swift
//  MovieApp - CollectionView Studies(Detail)
//
//  Created by Burak Yılmaz on 19.07.2022.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    var name = ""
    var image: UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = name.uppercased()
        imageView.image = image
    
    }
    



}
