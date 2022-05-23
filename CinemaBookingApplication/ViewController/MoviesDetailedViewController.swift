//
//  MoviesDetailedViewController.swift
//  CinemaBookingApplication
//
//  Created by Liuyu on 2022/5/22.
//

import Foundation
import UIKit
import Koloda

class MoviesDetailedViewController: UIViewController{
    
    ///
    @IBOutlet weak var moviesDetailedKolodaView: KolodaView!
    
    var currentMoviesArray = moviesArray().saveMoviesArray()
    lazy var moviesIndex = currentMoviesArray.count - 1
    var movieTotalNumber : Int = 0
    var movieView = [moviesView]()
    var i : Int = 0
    var currentMovieIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewDidLoad Function Working")
        moviesDetailedKolodaView.dataSource = self
        moviesDetailedKolodaView.delegate = self
        showMoviesCard()
    }
    
    func showMoviesCard(){
        print("showMoviesCard Function Working")
        while (i <= moviesIndex){
            let signleMovieView = moviesView(frame: CGRect(
                x: 0,
                y: 0,
                width: self.moviesDetailedKolodaView.frame.size.width,
                height: self.moviesDetailedKolodaView.frame.size.height))
            
            let moviePosterURL = URL(string: currentMoviesArray[i].moviePosterURL)
            self.getImageByURL(moviePoster: signleMovieView.imageView, moviePosterURL)
            signleMovieView.movieName.text = currentMoviesArray[i].movieName
            movieTotalNumber += 1
            i += 1
            self.movieView.append(signleMovieView)
        }
        self.moviesDetailedKolodaView.reloadData()
    }
    
    
    private func getImageByURL(moviePoster: UIImageView, _ moviePosterURL: URL?) {
        
        DispatchQueue.global(qos: .userInitiated).async {
            do{
                let imageRawData: Data = try Data(contentsOf: moviePosterURL!)
                DispatchQueue.main.async {
                    let image = UIImage(data: imageRawData)
                    moviePoster.image = image
                    moviePoster.sizeToFit()
                }
            }catch{
                ///if can't get the poster, send error message.
                print("\(error)")
            }
        }
    }
}

extension MoviesDetailedViewController: KolodaViewDelegate {
  func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
      print("it's the last cards, reloading all cards ")
      koloda.resetCurrentCardIndex()
      self.moviesDetailedKolodaView.reloadData()  }

  func koloda(_ koloda: KolodaView, didSelectCardAt index: Int) {
      DispatchQueue.main.async {
          self.performSegue(withIdentifier: "toShowSelectedMovie", sender: self)
      }
      currentMovieIndex = index
  }
  
  /// use Segue to change the viewController
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if segue.identifier == "toShowSelectedMovie" {
          let showSelectedMovieVC = segue.destination as! showSelectedMovieViewController
          showSelectedMovieVC.specificMovie = currentMoviesArray[currentMovieIndex]
      }
  }
}

extension MoviesDetailedViewController: KolodaViewDataSource {

  func kolodaNumberOfCards(_ koloda:KolodaView) -> Int {
        return movieTotalNumber
  }

  func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
    return movieView[index]
  }
}
