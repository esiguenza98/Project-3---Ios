//
//  ListMoviseVC.swift
//  TaskAppGain
//
//  Created by Ef 
//

import UIKit

class ListMoviesVC: UIViewController {

    // MARK: - OUTLETS
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var moviseTableView: UITableView!
    // MARK: - VARABLE
    var presenter: ListMoviesVCPresenter!
    // MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        presenter = ListMoviesVCPresenter(view: self)
        presenter.getListMoviesFromURL()
    }
     
}

 
