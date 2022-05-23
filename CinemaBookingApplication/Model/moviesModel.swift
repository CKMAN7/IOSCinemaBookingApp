//
//  moviesModel.swift
//  CinemaBookingApplication
//
//  Created by Liuyu on 2022/5/21.
//

import Foundation
import UIKit

///Initial Movie Structure
struct Movie {
    
    let moviePosterURL : String
    let movieName : String
    let movieSubName : String
    let movieDescription : String
    let moviePattern : String
    let movieYoutubeTrailerURL : String
    
}

struct moviesArray {
    
    let DoctorStrange2 = Movie(
        
        /// Movie Poster Image URL
        moviePosterURL: "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.3dmgame.com%2Fuploads%2Fimages%2Fnews%2F20220407%2F1649310332_272535.jpg&refer=http%3A%2F%2Fimg.3dmgame.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1654932790&t=00734cf07217e15e9a2939a73e3a6e5a",
        
        /// Movie Name
        movieName: "Doctor Strange2",
        
        /// Make an subName
        /// To avoid the name is so long that not fully dispalyed in one line
        movieSubName: "Multiverse of Madness(2022)",
        
        /// Movie Category: Action & Adventure
        movieDescription: "Story follows 'Spiderman: No Way Home'. Dr.Strange inadvertently opens the crazy multiverse, and things get out of control. The biggest threat to the universe is himself: an evil Dr.Strange appears.",
        
        /// Movie Pattern: Action & Adventure
        moviePattern: "Action, Adventure",
        
        /// Movie Trailer URL on YouTube
        movieYoutubeTrailerURL: "Rf8LAYJSOL8")
    
    let TheBatman = Movie(
        
            moviePosterURL: "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg1.mydrivers.com%2Fimg%2F20211017%2FSdd695d26-51db-4df4-af8c-5af7b7faef50.jpg&refer=http%3A%2F%2Fimg1.mydrivers.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1655547515&t=099eaa661609127291298656db96c467",
            
            movieName: "THE BATMAN",
            
            movieSubName: "",
            
            movieDescription: "When a sadistic serial killer begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement.",
            
            moviePattern: "Action, Adventure",
            
            movieYoutubeTrailerURL: "mqqft2x_Aa4")
    
    let Morbius = Movie(
        
            moviePosterURL: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSlqKqkW0oljnsL6r__e2RL1bJbPc6J_BYu2S8jbqTmvfVY4rtZ",
            
            movieName: "Morbius",
            
            movieSubName: "",
            
            movieDescription: "It stars Jared Leto as Dr. Michael Morbius,. In the film, Morbius and his surrogate brother Milo become living vampires after curing themselves of a rare blood disease.",
            
            moviePattern: "Action, Adventure",
            
            movieYoutubeTrailerURL: "oZ6iiRrz1SY")
    
    let FantasticBeasts = Movie(
        
            moviePosterURL: "https://upload.wikimedia.org/wikipedia/en/3/34/Fantastic_Beasts-_The_Secrets_of_Dumbledore.png",
            
            movieName: "Fantastic Beasts",
            
            movieSubName: "The Secrets of Dumbledore",
            
            movieDescription: "Set several years after the events of its predecessor, the film sees Albus Dumbledore tasking Newt Scamander and his allies with a mission that takes them into the heart of dark wizard Gellert Grindelwald's army.",
            
            moviePattern: "Fantasy, Adventure",
            
            movieYoutubeTrailerURL: "Y9dr2zw-TXQ")
    
    let Barbara = Movie(
        
            moviePosterURL: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSQHbVjEBn8kh1W49X3Kvpy5JlDPxRta6_NZovu2SGLj-4eG6qM",
            
            movieName: "Barbara",
            
            movieSubName: "",
            
            movieDescription: "Barbara is a 2012 German drama film directed by Christian Petzold. The film competed at the 62nd Berlin International Film Festival in February 2012, and it was selected as the German entry for the Best Foreign Language Oscar at the 85th Academy Awards.",
            
            moviePattern: "Drama",
            
            movieYoutubeTrailerURL: "q_Pn9zwhJtI")
    
    func saveMoviesArray() -> [Movie]{
        let moviesArray = [Barbara,FantasticBeasts,DoctorStrange2,TheBatman,Morbius]
        return moviesArray
    }
}
