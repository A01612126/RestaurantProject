//
//  AboutView.swift
//  Restaurant
//
//  Created by Angel González Torres on 11/06/23.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            
            VStack(alignment: .leading){
            
                    Text("Nuestra Historia")
                        .font(.largeTitle)
                        .bold()
                    
               Image("shakeshack")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom,30)
                
                Text("Shake Shack es una cadena estadounidense de restaurantes informales rápidos con sede en la ciudad de Nueva York. Comenzó como un carrito de perritos calientes dentro de Madison Square Park en 2001, y su popularidad creció constantemente")
                
                Image("ssnyc")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("""
                     Madison Square Park
                     New York City
                     """)
                
            }
            .padding(.horizontal)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
