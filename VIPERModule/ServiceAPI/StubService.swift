//
//  StubService.swift
//  VIPERModule
//
//  Created by Rohit Saini on 01/11/20.
//

typealias ProductClosure = ([HomeModel]) -> (Void)
protocol ProductsAPI {
    func fetchProducts(completion: ProductClosure) -> (Void)
}

class StubService {
    static let shared = StubService()
    private init(){}
}

extension StubService: ProductsAPI{
    func fetchProducts(completion: ProductClosure){
        let result = [HomeModel(title: "Apple"),HomeModel(title: "Orange"),HomeModel(title: "Papaya")]
        completion(result)
    }
}
