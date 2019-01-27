//
//  HeaderView.swift
//  TwitterBlurHeaderSample
//
//  Created by park kyung suk on 2019/01/26.
//  Copyright © 2019 park kyung suk. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    let imageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "header"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    // ユーザーの操作（スクロールなど）とアニメーションを連動させたり、アニメーションの開始・停止。・反転などのコントロールを可能にするAPI
    var animator: UIViewPropertyAnimator!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       setupImageView()
       setupVisualEffectBlur()
    }
    
    private func setupImageView() {
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    private func setupVisualEffectBlur() {
        
        animator = UIViewPropertyAnimator(duration: 3.0, curve: .linear, animations: { [weak self] in
            guard let `self` = self else { return }
            let blurEffect = UIBlurEffect(style: .regular)
            let visualEffectView = UIVisualEffectView(effect: blurEffect)
            self.addSubview(visualEffectView)
            
            visualEffectView.translatesAutoresizingMaskIntoConstraints = false
            visualEffectView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
            visualEffectView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
            visualEffectView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
            visualEffectView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        })
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
