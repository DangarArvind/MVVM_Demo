//
//  MoviesClient.swift
//  MVVC
//
//  Created by Ankit Dave on 08/07/17.
//  Copyright © 2017 Tasol. All rights reserved.
//

import UIKit
import Alamofire

class MoviesClient: NSObject {

    func FetchMovies(completion:@escaping ([Movie]?) -> ()){
        
        let urlString = "https://itunes.apple.com/us/rss/topmovies/limit=25/json"
    
    Alamofire.request(URL(string: urlString)!).responseJSON { (DataResponse) in
        
        if let jsonDict = DataResponse.result.value as? NSDictionary
        {
            if let moviesJSON = jsonDict.value(forKeyPath: "feed.entry") as? [NSDictionary]
            {
                let movies = moviesJSON.map({ (dict) in
                    
                    self.parseMovie(movie: dict)
                    
                })
                completion(movies)
                return
                
            }
        }
        
        }
    
    }
    
    func parseMovie(movie: NSDictionary) -> Movie {
       // return Movie(title: movie.value(forKeyPath: "im:name.label") as! String)
        return Movie(title: movie.value(forKeyPath: "im:name.label") as! String, url: movie.value(forKeyPath: "im:image") as! NSArray)
    }
}
