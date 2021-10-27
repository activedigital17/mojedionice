//
//  alphavintageAPI.swift
//  mojedionice
//
//  Created by Antonio Plantaš on 27.10.2021..
//

import Foundation
import Combine

struct AlphaVintageAPI{
    
    
    //TODO: kreirati više API keyava za TEST i PROD i keys array
    
    let API_KEY = "Q4HLXDZXJT2R35NK"
    
    func fetchSymbolsPublisher(keywords:String) -> AnyPublisher<SearchResults,Error>{
        
        let urlString = "https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=\(keywords)&apikey=\(API_KEY)"
        
        let url=URL(string: urlString)!
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map({$0.data})
            .decode(type: SearchResults.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
        
    }
}
