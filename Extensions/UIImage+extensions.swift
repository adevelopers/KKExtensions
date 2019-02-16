//
//  UIImage+extensions.swift
//  AudioReminder
//
//  Created by Kirill Khudiakov on 02/02/2019.
//  Copyright © 2019 adeveloper. All rights reserved.
//

import UIKit

extension UIImage {
    
    func resize(size new: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(new, false, 0.0)
        draw(in: CGRect(x: 0, y: 0, width: new.width, height: new.height))
        let image =  UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return  image ?? self
    }
    
    class func resize(from image: UIImage,and newSize : CGSize)  -> UIImage {
        
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)
        image.draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height))
        let newImage =  UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage ?? image
        
    }
    
}

//extension UIImageView {
//    func dropShadow(color: UIColor = .black,
//                    opacity: Float = 0.5,
//                    offset: CGSize = CGSize(width: -1, height: 1),
//                    radius: CGFloat = 10, scale: Bool = true) {
//        
//        layer.masksToBounds = true
//        layer.shadowColor = color.cgColor
//        layer.shadowOpacity = opacity
//        layer.shadowOffset = offset
//        layer.shadowRadius = radius
//        
//        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
//        layer.shouldRasterize = true
//        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
//        
//    }
//}
