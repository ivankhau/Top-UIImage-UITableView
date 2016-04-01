//
//  ViewController.swift
//  Hidden Image TableView
//
//  Created by Ivan Khau on 4/1/16.
//  Copyright © 2016 PeerGoggles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let width = UIScreen.mainScreen().bounds.size.width
    
    let imageView = UIImageView(image: UIImage(named: "topimage3.png")!)
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let yOffset = scrollView.contentOffset.y
        if(yOffset < -width/2) {
            var imageFrame = imageView.frame
            imageFrame.origin.y = yOffset
            imageFrame.size.height = -yOffset
            imageView.frame = imageFrame
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.addSubview(imageView)
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        imageView.frame = CGRectMake(0, -width/2, width, width/2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

