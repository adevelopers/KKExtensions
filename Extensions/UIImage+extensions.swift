//
//  UIImage+extensions.swift
//  AudioReminder
//
//  Created by Kirill Khudiakov on 02/02/2019.
//  Copyright © 2019 adeveloper. All rights reserved.
//

import UIKit

public extension UIImage {

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
