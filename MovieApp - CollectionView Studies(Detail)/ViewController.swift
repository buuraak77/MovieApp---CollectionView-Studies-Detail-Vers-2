//
//  ViewController.swift
//  MovieApp - CollectionView Studies(Detail)
//
//  Created by Burak Yılmaz on 19.07.2022.
//

import UIKit


class ViewController: UIViewController {
    
    var movieList = [Movies]()
    @IBOutlet var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        title = "MOVIE LİST"
        
    
        movieList.append(Movies(movieId: 1, movieName: "A.R.O.G", movieImage: "arog", moviePrice: 20.99))
        movieList.append(Movies(movieId: 2, movieName: "Matrix", movieImage: "matrix", moviePrice: 30.00))
        movieList.append(Movies(movieId: 3, movieName: "Before Sunrise", movieImage: "beforesunrise", moviePrice: 9.99))
        movieList.append(Movies(movieId: 4, movieName: "G.O.R.A", movieImage: "gora", moviePrice: 19.99))
        movieList.append(Movies(movieId: 5, movieName: "Django", movieImage: "django", moviePrice: 15.99))
        movieList.append(Movies(movieId: 6, movieName: "Recep İvedik", movieImage: "recepivedik", moviePrice: 8.99))
        movieList.append(Movies(movieId: 7, movieName: "Yahşi Batı", movieImage: "yahsibati", moviePrice: 14.89))
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "toDetailVc") as! DetailVC
        vc.name = "\(movieList[indexPath.row].movieName!)"
        vc.image = UIImage(named: movieList[indexPath.row].movieImage)
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    

    


    



}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func addToBasket(indexPath: IndexPath) {
        
        let movie = movieList[indexPath.row]
        
        let alert = UIAlertController(title: "\(movie.movieName!)", message: "\(movie.movieName!) Succesfully Added To Basket", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        present(alert,animated: true)
        
        
    }
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let movie = movieList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MovieCell
        
        cell.movieNameLabel.text = movie.movieName!
        cell.moviePriceLabel.text = "\(movie.moviePrice!) ₺"
        cell.movieImageLabel.image = UIImage(named: movie.movieImage!)
        
        
        return cell
        
    }
}

