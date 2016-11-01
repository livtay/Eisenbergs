//
//  ScrollingViewController.swift
//  Eisenberg's
//
//  Created by Olivia Taylor on 11/1/16.
//  Copyright © 2016 Olivia Taylor. All rights reserved.
//

import UIKit

class ScrollingViewController: UIViewController {
    
    @IBOutlet var getIt: UIImageView!
    var getItImage:UIImage?
    var orDontImage:UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.getItImage = UIImage(named: "get_it")!
        self.orDontImage = UIImage(named: "dont")!
        self.getIt.image = getItImage
        let timer = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(ScrollingViewController.animateFunction), userInfo: nil, repeats: true)
        timer.fire()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func animateFunction() {
        
        if self.getIt.image == self.getItImage {
            self.getIt.image = self.orDontImage
        } else {
            self.getIt.image = self.getItImage
        }
    }
    
}
