//
//  HomeInteractor.swift
//  VIPERModule
//
//  Created by Rohit Saini on 31/10/20.
//


protocol HomeUseCase {
     func getHomeTitle() -> HomeModel
}

struct HomeInteractor{
    
}

extension HomeInteractor: HomeUseCase{
    func getHomeTitle() -> HomeModel {
        return HomeModel(title: "Building VIPER Module")
    }
}
