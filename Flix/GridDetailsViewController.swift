//
//  GridDetailsViewController.swift
//  Flix
//
//  Created by Sherry Liu on 9/23/22.
//

import UIKit
import AlamofireImage

class GridDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var gridBackdropView: UIImageView!
    @IBOutlet weak var gridPosterView: UIImageView!
    @IBOutlet weak var gridTitleLabel: UILabel!
    @IBOutlet weak var gridSynopsisLabel: UILabel!
    
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        gridTitleLabel.text = movie["title"] as? String
        gridTitleLabel.sizeToFit()
        gridSynopsisLabel.text = movie["overview"] as? String
        gridSynopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        gridPosterView.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        gridBackdropView.af_setImage(withURL: backdropUrl!)
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
