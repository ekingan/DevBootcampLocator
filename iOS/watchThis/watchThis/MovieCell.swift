//
//  MovieCell.swift
//  watchThis
//
//  Created by Math LLC on 7/5/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDesc: UILabel!
    @IBOutlet weak var movieURL: UILabel!
    @IBOutlet weak var movieImg: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        movieImg.layer.cornerRadius = movieImg.frame.size.width / 2
        movieImg.clipsToBounds = true
        
    }
    
    func configureCell(movie: Movie) {
        movieTitle.text = movie.title
        movieDesc.text = movie.desc
        movieURL.text = movie.link
        movieImg.image = movie.getMovieImage()
    }

       

}
