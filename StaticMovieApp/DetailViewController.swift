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
    
    var detailImage = UIImage()
    var detailName = ""
    var timeLabel = ""
    var imdb = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailPosterImage.image = detailImage
        movieNameLabel.text = detailName
        movieDurationLabel.text = timeLabel
        imdbLabel.text = imdb
    }
}
