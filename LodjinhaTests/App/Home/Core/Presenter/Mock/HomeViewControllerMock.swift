//
//  HomeViewControllerMock.swift
//  LodjinhaTests
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation

@testable import Lodjinha
class HomeViewControllerMock: HomePresentation {
    
    var calledOnLoadingCategories: Bool!
    var calledOffLoadingCategories: Bool!
    var calledOnLoadingProducts: Bool!
    var calledOffLoadingProducts: Bool!
    var calledOnLoadingBanners: Bool!
    var calledOffLoadingBanners: Bool!
    var calledOnErrorCategories: NetworkError!
    var calledOnErrorProducts: NetworkError!
    var calledOnErrorBanners: NetworkError!
    var calledOnCategories: [CategoryViewModel]!
    var calledOnProducts: [ProductViewModel]!
    var calledOnBanners: [BannerViewModel]!
    
    func onLoadingCategories() {
        calledOnLoadingCategories = true
    }
    
    func offLoadingCategories() {
        calledOffLoadingCategories = true
    }
    
    func onLoadingProducts() {
        calledOnLoadingProducts = true
    }
    
    func offLoadingProducts() {
        calledOffLoadingProducts = true
    }
    
    func onLoadingBanners() {
        calledOnLoadingBanners = true
    }
    
    func offLoadingBanners() {
        calledOffLoadingBanners = true
    }
    
    func onErrorCategories(error: NetworkError) {
        calledOnErrorCategories = error
    }
    
    func onErrorProducts(error: NetworkError) {
        calledOnErrorProducts = error
    }
    
    func onErrorBanners(error: NetworkError) {
        calledOnErrorBanners = error
    }
    
    func onCategories(categories: [CategoryViewModel]) {
        calledOnCategories = categories
    }
    
    func onProducts(products: [ProductViewModel]) {
        calledOnProducts = products
    }
    
    func onBanners(banners: [BannerViewModel]) {
        calledOnBanners = banners
    }
    
    
}
