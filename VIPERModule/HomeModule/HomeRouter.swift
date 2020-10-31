//
//  HomeRouter.swift
//  VIPERModule
//
//  Created by Rohit Saini on 31/10/20.
//

import UIKit
protocol HomeRounting {
    
}

struct HomeRouter{
    var viewController: UIViewController
    init(view: UIViewController){
        self.viewController = view
    }
}

extension HomeRouter: HomeRounting{
    
}
