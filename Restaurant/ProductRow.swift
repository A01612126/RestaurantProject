//
//  ProductRow.swift
//  Restaurant
//
//  Created by Angel González Torres on 16/06/23.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var item: MenuItem
    
    var body: some View {
        HStack(spacing: 20) {
            Image (item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            VStack (alignment: .leading, spacing: 10) {
                Text(item.name)
                    .bold()
                Text("$\(item.price)")
                
            }
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(.red)
        }
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(item:MenuItem(name: "Test item", price: 4, imageName: "gallery9")) .environmentObject(CartManager())
        
    }
}
