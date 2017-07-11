//
//  ViewController.swift
//  MVVC
//
//  Created by Ankit Dave on 08/07/17.
//  Copyright © 2017 Tasol. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet var viewModel: ViewModel!
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        viewModel.fetchMovies {
        
         let queue1 = DispatchQueue(label: "com.appcoda.queue1", qos: DispatchQoS.background)
            
            queue1.async {
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            
            
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel.numberOfItemsInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieCellTableViewCell
        
    configureCell(cell: cell, forRowAtIndexPath: indexPath as NSIndexPath)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieCellTableViewCell
        
        configureCell(cell: cell, forRowAtIndexPath: indexPath as NSIndexPath)
    }

    
    func configureCell(cell: MovieCellTableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.loadData(name: viewModel.titleForItemAtIndexPath(indexPath: indexPath), url: viewModel.imgForItemAtIndexPath(indexPath: indexPath))
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100;
    }
    

}

