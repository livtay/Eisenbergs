//
//  PhotosViewController.swift
//  Eisenberg's
//
//  Created by Olivia Taylor on 11/2/16.
//  Copyright © 2016 Olivia Taylor. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {

    @IBOutlet var imageView: UIImageView?
    var currentPhoto:Photo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = self.currentPhoto?.photoTitle
        self.imageView?.image = self.currentPhoto?.image
        self.imageView?.contentMode = UIViewContentMode.scaleAspectFit
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
