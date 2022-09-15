//
//  CGMutablePath+Extension.swift
//  DropDown
//
//  Created by 남정은 on 2022/09/15.
//  Copyright © 2022 Kevin Hirsch. All rights reserved.
//

import UIKit

extension CGMutablePath {
    static func bottomlessRoundedRect(in rect: CGRect, radius: CGFloat) -> CGMutablePath {
        let path = CGMutablePath()
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addArc(tangent1End: CGPoint(x: rect.minX, y: rect.minY), tangent2End: CGPoint(x: rect.maxX, y: rect.minY), radius: radius)
        path.addArc(tangent1End: CGPoint(x: rect.maxX, y: rect.minY), tangent2End: CGPoint(x: rect.maxX, y: rect.maxY), radius: radius)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        return path
    }
    
    static func toplessRoundedRect(in rect: CGRect, radius: CGFloat) -> CGMutablePath {
        let path = CGMutablePath()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addArc(tangent1End: CGPoint(x: rect.minX, y: rect.maxY), tangent2End: CGPoint(x: rect.maxX, y: rect.maxY), radius: radius)
        path.addArc(tangent1End: CGPoint(x: rect.maxX, y: rect.maxY), tangent2End: CGPoint(x: rect.maxX, y: rect.minY), radius: radius)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        return path
    }
}
