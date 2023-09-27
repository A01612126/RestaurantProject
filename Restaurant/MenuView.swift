//
//  MenuView.swift
//  Restaurant
//
//  Created by Angel González Torres on 11/06/23.
//

import SwiftUI

struct MenuView: View {
    
    @State var items:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        
        ZStack{
            
            VStack(alignment: .leading){
                
                Text("Menú")
                    .font(.largeTitle)
                    .bold()
                    List(items)
                    {
                        item in  MenuListRow(item: item)
                
                    }.listStyle(.plain)
                        .onAppear{
                            //LLAMAR A LOS DATOS
                            items = dataService.getData()
                        }
                }
                
            }
            
        }
       
        
       
    }
    
    struct MenuView_Previews: PreviewProvider {
        static var previews: some View {
            MenuView()
        }
    }

