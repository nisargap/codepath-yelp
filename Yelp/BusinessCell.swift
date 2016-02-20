//
//  BusinessCell.swift
//  Yelp
//
//  Created by Nisarga Patel on 2/20/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    var business : Business! {
        didSet {
            
            nameLabel.text = business.name
            thumbImageView.setImageWithURL(business.imageURL!)
            categoriesLabel.text = business.categories
            addressLabel.text = business.address
            reviewsCountLabel.text = "\(business.reviewCount!) Reviews"
            ratingImageView.setImageWithURL(business.ratingImageURL!)
            distanceLabel.text = business.distance
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbImageView.layer.cornerRadius = 6
        thumbImageView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        
        // Initialization code
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
