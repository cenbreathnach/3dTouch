//
//  TableViewRow.swift
//  3DTouchAPIS
//
//  Created by Cen Breathnach on 10/10/15.
//  Copyright © 2015 Cen Breathnach. All rights reserved.
//

import UIKit

class TableViewRow: NSObject {

    var image:UIImage?
    var title:String?
    
    init( image:UIImage, title:String){
        self.image = image
        self.title = title
    }
}
