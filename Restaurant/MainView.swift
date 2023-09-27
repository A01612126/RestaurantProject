//
//  ContentView.swift
//  Restaurant
//
//  Created by Angel González Torres on 11/06/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var cartManager = CartManager()
    
    var body: some View {
        
        NavigationView{
            
            TabView {
                
                MenuView().tabItem {
                    VStack{
                        Image(systemName: "menucard")
                        Text("Menú")
                        
                    }
                    
                }
                
                AboutView().tabItem{
                    VStack{
                        Image(systemName: "info.circle")
                        Text("Info")
                    }
                    
                }
                
                GalleryView().tabItem{
                    VStack{
                        Image(systemName: "photo")
                        Text("Galería")
                    }
                    
                }
                ShoppingKartView().tabItem{
                    VStack{
                        Image (systemName: "cart")
                        Text ("Mi orden")
                    }
                }
            }
            .toolbar {
                NavigationLink{
                    ShoppingKartView()
                        .environmentObject(cartManager)
                } label:{
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
        
    }
    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
}
