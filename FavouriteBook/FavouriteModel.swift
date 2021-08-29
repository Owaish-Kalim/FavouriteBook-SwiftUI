//
//  FavouriteModel.swift
//  FavouriteBook
//
//  Created by owaish on 26/08/21.
//

import Foundation
import SwiftUI

struct FavouriteModel : Identifiable {
    var id = UUID()
    var title : String
    var elements : [FavouriteElements]
}

struct FavouriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
}

//Bands

let mettalica = FavouriteElements(name: "Mettalica", imageName: "metallica", description: "No 1 Music Band")
let megadeth = FavouriteElements(name: "Megadeth", imageName: "megadeth", description: "No 2 Music Band")
let ironmaiden = FavouriteElements(name: "Iron Maiden", imageName: "ironmaiden", description: "No 3 Music Band")

let favouriteBands = FavouriteModel(title: "Favourite Bands" , elements: [mettalica, megadeth, ironmaiden])

//Movies

let pulpFiction = FavouriteElements(name: "Pulp Fiction", imageName: "pulpfiction", description: "No 1 Movie")
let theDarkKnight = FavouriteElements(name: "The Dark Knight", imageName: "thedarkknight", description: "No 2 Movie")
let killBill = FavouriteElements(name: "Kill Bill", imageName: "killbill", description: "No 3 Movie")

let favouriteMovies = FavouriteModel(title: "Favourite Movies" , elements: [pulpFiction, theDarkKnight, killBill])

let myFavourites = [favouriteBands, favouriteMovies]
