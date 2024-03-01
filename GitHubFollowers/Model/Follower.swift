//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Sampson Ezieme on 2/28/24.
//

import Foundation

struct Follower: Codable {
    var login: String
    var avatarUrl: String
    // name has to be exact what is in the JSON but codable has a converter from
    // snake_case to camelCase
}
