//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Nuriddinov Subkhiddin on 29/09/22.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request.Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection "
    case invalidResponse = "Invalid response from the server."
    case invalidData = "The data recieved from the server was invalid.Please try again"
    case unableToFavorite = "There was an error favoriting this user.Please try again"
    case alreadyInFavorotes = "You've already favorited this user.You must REALLY like them!"
     }
