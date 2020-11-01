//
//  ViewController.swift
//  VIPERModule
//
//  Created by Rohit Saini on 31/10/20.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var homeTitleLbl: UILabel!
    
    var presenter: HomePresentation!
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
}

extension HomeViewController: HomeView {
    func fetchProducts(result: [HomeModel]) {
        print(result)
    }
}
