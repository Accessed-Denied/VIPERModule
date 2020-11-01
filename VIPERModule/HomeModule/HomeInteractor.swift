//
//  HomeInteractor.swift
//  VIPERModule
//
//  Created by Rohit Saini on 31/10/20.
//


protocol HomeUseCase {
    func getProduct(completion:ProductClosure) -> (Void)
}

struct HomeInteractor: HomeUseCase{
    var service: StubService
    init(service: StubService){
        self.service = service
    }
}

extension HomeInteractor{
    func getProduct(completion: ProductClosure){
        service.fetchProducts { products in
            completion(products)
        }
    }
}
