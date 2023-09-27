//
//  PopUpView.swift
//  Restaurant
//
//  Created by Angel González Torres on 15/06/23.
//

import SwiftUI

struct PopUpView: View {
    @Binding var selectedImage: String
    @Binding var sheetVisible: Bool
    
    var body: some View {
        
        ZStack{
            Image (selectedImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack{
                HStack{
                    Spacer()
                    
                    Button{
                        sheetVisible = false
                    } label: {
                        Image(systemName: "x.circle")
                            .foregroundColor(.black)
                            .scaleEffect(2)
                    }
                    .padding()
                }
               Spacer()
                
            }
           
            
        }
        
    }
}

struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView(selectedImage: Binding.constant("gallery1"), sheetVisible: Binding.constant(true))
    }
}
