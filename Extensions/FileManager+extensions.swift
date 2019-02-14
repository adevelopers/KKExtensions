//
//  FileManager+extensions.swift
//  KKExtensions
//
//  Created by Kirill Khudiakov on 29/01/2019.
//  Copyright © 2019 adeveloper. All rights reserved.
//

import Foundation

public extension FileManager {

    class func getDocumentDirectory() -> URL? {
        guard let documentURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            print("Faild to get the document directory")
            return nil
        }

        return documentURL
    }

}
