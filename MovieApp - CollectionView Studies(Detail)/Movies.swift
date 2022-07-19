//
//  Movies.swift
//  MovieApp - CollectionView Studies(Detail)
//
//  Created by Burak Yılmaz on 19.07.2022.
//

import Foundation

class Movies {
    var movieId:Int?
    var movieName:String?
    var movieImage:String?
    var moviePrice:Double?
    
    
    init(movieId:Int,movieName:String,movieImage:String,moviePrice:Double) {
        self.movieId = movieId
        self.movieName = movieName
        self.movieImage = movieImage
        self.moviePrice = moviePrice
    }
}
