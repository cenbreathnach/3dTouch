//
//  DetailViewController.swift
//  3DTouchAPIS
//
//  Created by Cen Breathnach on 10/10/15.
//  Copyright © 2015 Cen Breathnach. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    var model:TableViewRow?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let m = model {
           image.image = m.image
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
