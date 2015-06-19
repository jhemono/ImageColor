//
//  JHCollectionViewCell.swift
//  ImageColor
//
//  Created by Julien Hémono on 19/06/15.
//  Copyright © 2015 Julien Hémono. All rights reserved.
//

import UIKit

class JHCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    var image: UIImage? {
        didSet {
            imageView.image = image
        }
    }
    
    override func awakeFromNib() {
        let selectedBackgroundView = UIView(frame: CGRectZero)
        selectedBackgroundView.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        self.selectedBackgroundView = selectedBackgroundView
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.backgroundColor = UIColor.whiteColor()
        self.image = nil
    }
    
    override var highlighted: Bool {
        didSet {
            super.highlighted = highlighted
            if highlighted {
                self.imageView.alpha = 0.8
            } else {
                self.imageView.alpha = 1
            }
        }
    }
}
