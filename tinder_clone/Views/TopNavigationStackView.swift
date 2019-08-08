//
//  TopNavigationStackView.swift
//  tinder_clone
//
//  Created by Arturo Filio Villa on 8/5/19.
//  Copyright © 2019 Arturo Filio Villa. All rights reserved.
//

import UIKit

class TopNavigationStackView: UIStackView {

    let settingsButton = UIButton(type: .system)
    let messagesButton = UIButton(type: .system)
    let fireImageView = UIImageView(image: #imageLiteral(resourceName: "app_icon"))
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        fireImageView.contentMode = .scaleAspectFit
        heightAnchor.constraint(equalToConstant: 80).isActive = true
        settingsButton.setImage(#imageLiteral(resourceName: "top_left_profile").withRenderingMode(.alwaysOriginal), for: .normal)
        messagesButton.setImage(#imageLiteral(resourceName: "top_right_messages").withRenderingMode(.alwaysOriginal), for: .normal)
        
        [settingsButton, UIView(),fireImageView, UIView(),messagesButton].forEach {
            (v) in addArrangedSubview(v)
        }
        
        distribution = .equalCentering
        
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
}
