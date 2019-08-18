//
//  CardViewModel.swift
//  tinder_clone
//
//  Created by Arturo Filio Villa on 8/16/19.
//  Copyright © 2019 Arturo Filio Villa. All rights reserved.
//

import UIKit

// protocol -> same as an interface in Android
protocol ProducesCardViewModel {
    func toCardViewModel() -> CardViewModel
}

struct CardViewModel {
    // we'll define properties that are view will display/r3ender out
    let imageNames: [String]
    let attributedString: NSAttributedString
    let textAlignment: NSTextAlignment
}

