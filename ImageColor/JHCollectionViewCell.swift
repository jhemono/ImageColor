//
//  JHCollectionViewCell.swift
//  ImageColor
//
//  Created by Julien Hémono on 19/06/15.
//  Copyright © 2015 Julien Hémono. All rights reserved.
//

import UIKit

class JHCollectionViewCell: UICollectionViewCell {
    
    var imageView: UIImageView
    var image: UIImage? {
        didSet {
            imageView.image = image
        }
    }
    
    override init(frame: CGRect) {
        imageView = UIImageView()
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.whiteColor()
        
        self.imageView.frame = CGRectInset(self.bounds, 10, 10)
        self.contentView.addSubview(imageView)
        
        let selectedBackgroundView = UIView(frame: CGRectZero)
        selectedBackgroundView.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        self.selectedBackgroundView = selectedBackgroundView
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
