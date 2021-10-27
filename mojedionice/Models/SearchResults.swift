//
//  SearchResults.swift
//  mojedionice
//
//  Created by Antonio Plantaš on 27.10.2021..
//

import Foundation


struct SearchResults:Decodable{
    
    let items:[IndivividalSearchResult]
    
    
    //mapiranje best matches propertya
    enum CodingKeys:String,CodingKey{
        
        case items = "bestMatches"
    
    }
    
}


struct IndivividalSearchResult:Decodable{
    
    let symbol:String
    let name:String
    let type:String
    let currency:String
    
    
    
    //mapiranje propertya za dionicu
    enum CodingKeys:String,CodingKey{
        
        case symbol="1. symbol"
        case name="2. name"
        case type="3. type"
        case currency="8. currency"
        
    }
    
}
