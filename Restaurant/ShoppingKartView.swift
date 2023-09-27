//
//  ShoppingKartView.swift
//  Restaurant
//
//  Created by Angel González Torres on 15/06/23.
//

import SwiftUI

struct ShoppingKartView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView{
            HStack(spacing: 20) {
                Image ("gallery11")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .cornerRadius(10)
                VStack (alignment: .leading, spacing: 10) {
                    Text("ShackBurger")
                        .bold()
                    Text("$80")
                    
                }
                Spacer()
                Image(systemName: "trash")
                    .foregroundColor(.red)
                
            }
            
            .navigationTitle(Text("Mi Carrito"))
            .padding(.top)
            
            
        }
    }
    
    struct ShoppingKartView_Previews: PreviewProvider {
        static var previews: some View {
            ShoppingKartView()
                .environmentObject(CartManager())
        }
    }
}
