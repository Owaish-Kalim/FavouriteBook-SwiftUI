//
//  ContentView.swift
//  FavouriteBook
//
//  Created by owaish on 26/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        NavigationView {
            List {
                ForEach(myFavourites) {
                    favourite in Section(header: Text(favourite.title)) {
                        ForEach(favourite.elements) { element in
                            NavigationLink(destination: DetailsView(
                            chosenFavouriteElement: element)) {
                                Text(element.name)
                            }
                        }
                    }
                }
            }.navigationBarTitle(Text("Favourite Book"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
