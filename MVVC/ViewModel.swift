//
//  ViewModel.swift
//  MVVC
//
//  Created by Ankit Dave on 08/07/17.
//  Copyright © 2017 Tasol. All rights reserved.
//

import UIKit
import CoreData

class ViewModel: NSObject {
    
    
    @IBOutlet var moviesClient: MoviesClient!
    
    var movies:[Movie]?
    
    func fetchMovies(completion:@escaping () ->()) {
        
        moviesClient.FetchMovies { movies in
            self.movies = movies
            
            completion()
            
              }
        
    }
    
    func numberOfItemsInSection(section: Int) -> Int {
        return movies?.count ?? 0
    }
    
    func titleForItemAtIndexPath(indexPath: NSIndexPath) -> String {
        return movies?[indexPath.row].title ?? ""
    }
    
    func imgForItemAtIndexPath(indexPath: NSIndexPath) -> String {
        
        let arrimg = movies?[indexPath.row].url
        let str = (arrimg?.object(at: 2) as! NSDictionary).value(forKey: "label") as! String;
        return str
    }

    
    
}
