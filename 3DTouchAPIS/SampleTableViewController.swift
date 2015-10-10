//
//  SampleTableViewController.swift
//  3DTouchAPIS
//
//  Created by Cen Breathnach on 10/10/15.
//  Copyright © 2015 Cen Breathnach. All rights reserved.
//

import UIKit

class SampleTableViewController: UITableViewController, UIViewControllerPreviewingDelegate {

    lazy var data:[TableViewRow] = {
        let array = [
            TableViewRow(image: UIImage(named: "science_cat")!, title: "Science Cat"),
            TableViewRow(image: UIImage(named:"impress_cat")!, title: "Impressed Cat")
        ]
        return array
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if( traitCollection.forceTouchCapability == .Available){
            registerForPreviewingWithDelegate(self, sourceView: view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SampleTableViewCell", forIndexPath: indexPath) as? SampleTableViewCell
        let model = data[indexPath.row]
        cell!.cellImage.image = model.image
        cell!.titleLabel.text = model.title
        return cell!
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        let indexPath = tableView.indexPathForRowAtPoint(location)
        let cell = tableView.cellForRowAtIndexPath(indexPath!)
        let detailVC = storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as? DetailViewController
        let model = data[(indexPath?.row)!]
        detailVC?.model = model

        detailVC!.preferredContentSize = CGSize(width: 0.0, height: UIScreen.mainScreen().bounds.size.height-200)
        previewingContext.sourceRect = cell!.frame
        return detailVC
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
        showViewController(viewControllerToCommit, sender: self)
    }
}
