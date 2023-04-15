//
//  ViewController.swift
//  StaticMovieApp
//
//  Created by Ahmet Tarik DÖNER on 22.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTable: UITableView!
    var listMovie = [MovieData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let movie1 = MovieData(movieName: "The Lord Of The Rings", duration: "158min", rating: 9.50, moviePosterImage: "lotr-poster", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce felis massa, imperdiet nec magna sit amet, condimentum maximus erat. In hac habitasse platea dictumst. Donec sed rutrum tellus, eu venenatis arcu. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam tempor in est non varius. Proin quis mollis lacus, at cursus velit. Suspendisse potenti. Ut quis est molestie, faucibus leo non, bibendum arcu. Nullam in vestibulum lectus.")
        listMovie.append(movie1)
        
        let movie2 = MovieData(movieName: "Patch Adams", duration: "108min", rating: 9.10, moviePosterImage: "patchAdams-detail", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce felis massa, imperdiet nec magna sit amet, condimentum maximus erat. In hac habitasse platea dictumst. Donec sed rutrum tellus, eu venenatis arcu. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam tempor in est non varius. Proin quis mollis lacus, at cursus velit. Suspendisse potenti. Ut quis est molestie, faucibus leo non, bibendum arcu. Nullam in vestibulum lectus.")
        listMovie.append(movie2)
        
        let movie3 = MovieData(movieName: "The Man From Earth", duration: "89min", rating: 8.80, moviePosterImage: "tmfe-detail", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce felis massa, imperdiet nec magna sit amet, condimentum maximus erat. In hac habitasse platea dictumst. Donec sed rutrum tellus, eu venenatis arcu. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam tempor in est non varius. Proin quis mollis lacus, at cursus velit. Suspendisse potenti. Ut quis est molestie, faucibus leo non, bibendum arcu. Nullam in vestibulum lectus.")
        listMovie.append(movie3)
        
        let movie4 = MovieData(movieName: "12 Years Slave", duration: "142min", rating: 9.20, moviePosterImage: "12yearSlave-detail", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce felis massa, imperdiet nec magna sit amet, condimentum maximus erat. In hac habitasse platea dictumst. Donec sed rutrum tellus, eu venenatis arcu. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam tempor in est non varius. Proin quis mollis lacus, at cursus velit. Suspendisse potenti. Ut quis est molestie, faucibus leo non, bibendum arcu. Nullam in vestibulum lectus.")
        listMovie.append(movie4)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listMovie.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            vc.detailImage = UIImage(named: listMovie[indexPath.row].moviePosterImage)!
            vc.detailName = listMovie[indexPath.row].movieName
            vc.timeLabel = listMovie[indexPath.row].duration
            vc.imdb = String(listMovie[indexPath.row].rating)
            vc.movieDescription = listMovie[indexPath.row].description
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableViewCell
        cell.moviePosterImage.image = UIImage(named: listMovie[indexPath.row].moviePosterImage)
        cell.movieNameLabel.text    = listMovie[indexPath.row].movieName
        cell.ratingLabel.text       = String(listMovie[indexPath.row].rating)
        cell.durationLabel.text     = listMovie[indexPath.row].duration
        return cell
    }
}
