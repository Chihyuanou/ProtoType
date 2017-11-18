//
//  Post.swift
//  ProtoType
//
//  Created by Chingan on 17/11/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation

class Post{
    
    var blogName: String
    var name: String
    var content: String
    var type: [String]
    var postTime: String
    var commentCount = 0
    var likeCount = 0
    var postPhotos: [String]
    var photoCount = 0
    
    init(blogName: String, name: String, postTime: String, content: String, type: [String], commentCount: Int, likeCount: Int, postPhotos:[String], photoCount: Int) {
        self.blogName = blogName
        self.name = name
        self.content = content
        self.postTime = postTime
        self.commentCount = commentCount
        self.likeCount = likeCount
        self.type = type
        self.postPhotos = postPhotos
        self.photoCount = photoCount
    }
    
}
