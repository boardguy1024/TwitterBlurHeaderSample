//
//  HeaderView.swift
//  TwitterBlurHeaderSample
//
//  Created by park kyung suk on 2019/01/26.
//  Copyright © 2019 park kyung suk. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
