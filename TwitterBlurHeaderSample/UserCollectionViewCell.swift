//
//  UserCollectionViewCell.swift
//  TwitterBlurHeaderSample
//
//  Created by park kyung suk on 2019/01/27.
//  Copyright © 2019 park kyung suk. All rights reserved.
//

import UIKit

class UserCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureCell() {
        userImageView.image = #imageLiteral(resourceName: "dummy-cell")
    }
}
