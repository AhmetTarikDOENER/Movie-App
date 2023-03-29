//
//  MovieData.swift
//  StaticMovieApp
//
//  Created by Ahmet Tarik DÖNER on 23.03.2023.
//

import Foundation

class MovieData {
    var movieName       : String
    var duration        : String
    var rating          : Double
    var moviePosterImage: String
    
    init(movieName: String, duration: String, rating: Double, moviePosterImage: String) {
        self.movieName          = movieName
        self.duration           = duration
        self.rating             = rating
        self.moviePosterImage   = moviePosterImage
    }
}
