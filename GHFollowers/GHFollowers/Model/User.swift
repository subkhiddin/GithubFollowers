//
//  User.swift
//  GHFollowers
//
//  Created by Nuriddinov Subkhiddin on 24/09/22.
//

import Foundation

struct User : Codable {
    var login : String
    var avatarUrl : String
    var name : String?
    var location : String?
    var bio : String?
    var publicRepos : Int
    var publicGists : Int
    var htmlUrl : String
    var following : Int
    var followers : Int
    var createdAt : String?
    
    enum CodingKeys: String, CodingKey {
        case login, followers, name, location, bio, following
        case avatarUrl = "avatar_url"
        case publicRepos = "public_repos"
        case publicGists = "public_gists"
        case htmlUrl = "html_url"
        case createdAt = "created_at"
    }
    
}
