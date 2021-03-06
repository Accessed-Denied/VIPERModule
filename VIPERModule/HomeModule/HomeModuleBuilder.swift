//
//  HomeModuleBuilder.swift
//  VIPERModule
//
//  Created by Rohit Saini on 31/10/20.
//

import UIKit

struct HomeModuleBuilder{
    
   static func build() -> UIViewController{
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let interactor = HomeInteractor(service: StubService.shared)
        let rounter = HomeRouter(view: view)
        let presenter = HomePresenter(view: view, interactor: interactor, router: rounter)
        view.presenter = presenter
        return view
    }
}
