//
//  MovieTableViewCell.swift
//  StaticMovieApp
//
//  Created by Ahmet Tarik DÖNER on 23.03.2023.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    
    @IBOutlet weak var moviePosterImage: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var infoSubView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        moviePosterImage.corneredImage()
        infoSubView.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
