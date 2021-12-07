//
//  PartyRock.swift
//  UIKit-Party-Rock-App
//
//  Created by Pavan Mikkilineni on 06/12/21.
//

import Foundation

class PartyRock{
    
    private var _imageURL:String!
    private var _vedioURL:String!
    private var _vedioTitle:String!
    
    var imageURL:String{
        _imageURL
    }
    
    var vedioURL:String{
        _vedioURL
    }
    
    var vedioTitle:String{
        _vedioTitle
    }
    
    init(imageURL:String,vedioURL:String,vedioTitle:String){
        _imageURL=imageURL
        _vedioURL=vedioURL
        _vedioTitle=vedioTitle
    }
    
}
