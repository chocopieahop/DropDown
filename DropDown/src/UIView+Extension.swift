//
//  UIView+Extension.swift
//  DropDown
//
//  Created by 남정은 on 2022/09/15.
//  Copyright © 2022 Kevin Hirsch. All rights reserved.
//

import UIKit

extension UIView {
    @available(iOS 11.0, *)
    func configureBottomCornerRadius() {
        self.clipsToBounds = true
        self.layer.cornerRadius = 5
        self.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
}
