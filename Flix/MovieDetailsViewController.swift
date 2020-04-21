//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by aria javanmard on 4/20/20.
//  Copyright © 2020 aria javanmard. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backDropView: UIImageView!
    
    @IBOutlet weak var posrterView: UIImageView!
    var movie : [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(movie["title"])
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        descriptionLabel.text = movie["overview"] as? String
    
        descriptionLabel.sizeToFit()
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let poster_path = movie["poster_path"] as! String
        let PosterURL = URL(string: baseURL + poster_path)
        posrterView.af_setImage(withURL: PosterURL!)
        
        let base2URL = "https://image.tmdb.org/t/p/w780"
        let backdrop_path = movie["backdrop_path"] as! String
        let backdropURL = URL(string: base2URL + backdrop_path)
        backDropView.af_setImage(withURL: backdropURL!)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
