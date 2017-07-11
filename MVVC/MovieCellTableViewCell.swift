//
//  MovieCellTableViewCell.swift
//  MVVC
//
//  Created by Ankit Dave on 10/07/17.
//  Copyright © 2017 Tasol. All rights reserved.
//

import UIKit
import SDWebImage
class MovieCellTableViewCell: UITableViewCell {
    
    @IBOutlet var img: UIImageView!
    @IBOutlet var name: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadData(name:String,url:String)
    {
        self.name.text = name;
        self.img.image = nil;
        
        let queue = DispatchQueue(label: "main.que", qos: .background, attributes: .concurrent, autoreleaseFrequency: .never, target: nil)
        
        queue.async
        {
        
            self.img.sd_setImage(with: URL(string: url), placeholderImage: UIImage(named: "placeholder.png"))
            
        }
    }

}
