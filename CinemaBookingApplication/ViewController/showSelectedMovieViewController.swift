//
//  showSelectedMovieViewController.swift
//  CinemaBookingApplication
//
//  Created by Liuyu on 2022/5/22.
//

import Foundation
import UIKit
import youtube_ios_player_helper

class showSelectedMovieViewController: UIViewController, YTPlayerViewDelegate{
    
    var specificMovie : Movie?
    
    @IBOutlet weak var selectedMovieName: UILabel!
    @IBOutlet weak var selectedMovieSubName: UILabel!
    @IBOutlet private var movieTrailerPlaiView : YTPlayerView!
    @IBOutlet weak var selectedMovieDescription: UILabel!
    @IBOutlet weak var selectedMovieCategories: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        movieTrailerPlaiView.delegate = self
        
        movieTrailerPlaiView.load(withVideoId: specificMovie!.movieYoutubeTrailerURL)
        
        selectedMovieName.text = specificMovie?.movieName
        
        selectedMovieSubName.text = specificMovie?.movieSubName
        
        selectedMovieDescription.text = specificMovie?.movieDescription
        
        selectedMovieCategories.text = specificMovie?.moviePattern
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView, didSelectRowAt indexPath: IndexPath) {
            playerView.playVideo()
        }
    
    /// use Segue to change the viewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSelectTime" {
            let purchaseMovieVC = segue.destination as! purchaseMovieViewController
            purchaseMovieVC.specificMovie = specificMovie
        }
    }

}
