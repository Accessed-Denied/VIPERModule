//
//  HomePresenter.swift
//  VIPERModule
//
//  Created by Rohit Saini on 31/10/20.
//

import Foundation
protocol HomePresentation {
    func viewDidLoad() -> Void
}

struct HomePresenter{
    var view: HomeView
    var interactor: HomeUseCase
    var router: HomeRounting
    init(view:HomeView,interactor: HomeUseCase,router:HomeRounting){
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
}

extension HomePresenter: HomePresentation{
    func viewDidLoad() {
       self.interactor.getProduct { products in
            DispatchQueue.main.async {
                view.fetchProducts(result: products)
            }
        }
        
        
    }
}
