//
//  MenuListRow.swift
//  Menu
//
//  Created by Angel González Torres on 11/06/23.
//

import SwiftUI

struct MenuListRow: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var item: MenuItem
    
    var body: some View {
        
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:50)
                .cornerRadius(10)
            
            Text(item.name)
                .bold()
            
            Spacer()
            
            Button{
                print("Se añadió a tu carrito")
                
            }label:{
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.gray)
                    .cornerRadius(50)
                    .padding()
                    .scaleEffect(0.8)
                
            }
            
            //price
            .listRowSeparator(.hidden)
            .listRowBackground(Color(.white).opacity(0.1))
            
        }
    }
    
    
    struct MenuListRow_Previews: PreviewProvider {
        static var previews: some View {
            MenuListRow(item: MenuItem(name: "Test item", price: 4, imageName: "tako-sushi"))
                .environmentObject(CartManager())
        }
    }
}
