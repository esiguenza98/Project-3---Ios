//
//  MoviesDetailsVC+Presenter.swift
//  TaskAppGain
//
//  Created by Ef 
//

import UIKit

extension MoviesDetailsVC: MoviesDelailsViewControllerType {
   
    func showIndicator() {
        DispatchQueue.main.async {
            self.activityIndicator.isHidden = false
            self.activityIndicator.startAnimating()
        }
    }
    
    func hideIndicator() {
        DispatchQueue.main.async {
            self.activityIndicator.stopAnimating()
            self.activityIndicator.isHidden = true
        }
    }
    
    func updateDataToUI(title: String, date: String, description: String, image: String) {
        movieDetailsName.text = title
        movieDetailsDate.text = date
        movieDetailsImage.loadImageFromURL(urlPath: image )
        MovieDetailsDescription.text = description
    }
 
}
