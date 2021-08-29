//
//  DetailsView.swift
//  FavouriteBook
//
//  Created by owaish on 26/08/21.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavouriteElement : FavouriteElements
    
    var body: some View {
        VStack {
            Image(chosenFavouriteElement.imageName).resizable().aspectRatio(contentMode: .fit)
            Text(chosenFavouriteElement.name).font(.largeTitle).padding()
            
            Text(chosenFavouriteElement.description)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavouriteElement: theDarkKnight)
    }
}
