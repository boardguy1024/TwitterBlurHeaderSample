//
//  StretchyHeaderLayout.swift
//  TwitterBlurHeaderSample
//
//  Created by park kyung suk on 2019/01/27.
//  Copyright © 2019 park kyung suk. All rights reserved.
//

import UIKit

class StretchyHeaderLayout: UICollectionViewFlowLayout {
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let layoutAttributes = super.layoutAttributesForElements(in: rect)
        
        layoutAttributes?.forEach { attributes in
            
            //スクロール量によってHeaderのスケールを変更する
            if attributes.representedElementKind == UICollectionView.elementKindSectionHeader && attributes.indexPath.section == 0 {
                
                guard let collectionView = collectionView else { return }
                let contentOffsetY = collectionView.contentOffset.y
                
                if contentOffsetY > 0 { return }
                
                print(contentOffsetY)
                let width = collectionView.frame.width
                let height = attributes.frame.height - contentOffsetY
                
                attributes.frame = CGRect(x: 0, y: contentOffsetY, width: width, height: height)
            }
        }
        
        
        
        return layoutAttributes
    }
    
    // layout更新をするにはtrue - trueにすることでスクロールするたびにcontentOffsetYが更新される
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
}
