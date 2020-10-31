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

class HomePresenter{
    weak var view: HomeView?
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
        let homeModel = self.interactor.getHomeTitle()
        DispatchQueue.main.async { [weak self] in
            guard let `self` = self else {return}
            self.view?.updateHomeTitle(title: homeModel.title)
        }
        
    }
}
