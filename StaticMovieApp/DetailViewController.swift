//
//  DetailViewController.swift
//  StaticMovieApp
//
//  Created by Ahmet Tarik DÖNER on 30.03.2023.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var detailPosterImage: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieDurationLabel: UILabel!
    @IBOutlet weak var imdbLabel: UILabel!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    
    var detailImage = UIImage()
    var detailName = ""
    var timeLabel = ""
    var imdb = ""
    var movieDescription = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailPosterImage.image = detailImage
        movieNameLabel.text = detailName
        movieDurationLabel.text = timeLabel
        imdbLabel.text = imdb
        movieDescriptionLabel.text = movieDescription
    }
}
