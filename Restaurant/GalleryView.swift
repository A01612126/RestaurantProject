//
//  GalleryView.swift
//  Restaurant
//
//  Created by Angel González Torres on 11/06/23.
//

import SwiftUI

struct GalleryView: View {
    
    
    
    @State var photoData = [String]()
    @State var sheetVisible = false
    @State var selectedImage = ""
    var dataService = DataService()
    
    var body: some View {
        
        VStack (alignment: .leading) {
            Text ("Gallery")
                .font(.largeTitle)
                .bold()
            
            GeometryReader {
                proxy in  ScrollView(showsIndicators: false) {
                    
                    LazyVGrid(columns:[GridItem(spacing: 10 ),
                         GridItem(spacing: 10)],
                              spacing:10){
                        
                        ForEach(photoData, id: \.self){ p in Image(p)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (proxy.size.width)-20/3)
                                .clipped()
                                .onTapGesture{
                                    selectedImage = p
                                    sheetVisible = true
                                }
                            
                        }
                    }
                }
            }
            
           
        }.padding(.horizontal).onAppear{
            
            photoData = dataService.getPhotos()
        } .sheet(isPresented: $sheetVisible){
            PopUpView(selectedImage: $selectedImage, sheetVisible: $sheetVisible   )
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
