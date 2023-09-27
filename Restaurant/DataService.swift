//
//  DataService.swift
//  Menu
//
//  Created by Angel González Torres on 11/06/23.
//

import Foundation

struct DataService{
    func getData()->[MenuItem]
    {
        return [MenuItem(name: "ShackBurger", price: 80, imageName: "gallery1"),
                MenuItem(name: "SmokeShack", price: 120, imageName: "gallery4"),
                MenuItem(name: "Shack Stack", price: 140, imageName: "gallery9"),
                MenuItem(name: "Hot Dog", price: 78, imageName: "gallery14"),
                MenuItem(name: "Chicken Dog", price: 78, imageName: "gallery15"),
                MenuItem(name: "Fries", price: 50, imageName: "gallery10"),
                MenuItem(name: "Cheese Fries", price: 65, imageName: "gallery6"),
                MenuItem(name: "Vanilla Custard", price: 75, imageName: "gallery3"),
                MenuItem(name: "Chocolate Custard", price: 75, imageName: "gallery2"),
                MenuItem(name: "Bottled Water", price: 35, imageName: "gallery16"),
                MenuItem(name: "Cold Brew", price: 70, imageName: "gallery18"),
                MenuItem(name: "ShackMeister Ale", price: 115, imageName: "gallery19")]
    }
    
    func getPhotos()->[String]
    {
       return ["gallery1","gallery2","gallery3","gallery4","gallery6","gallery7","gallery8","gallery9","gallery10","gallery11"]
    }
}
