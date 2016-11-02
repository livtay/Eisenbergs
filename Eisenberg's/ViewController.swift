//
//  ViewController.swift
//  Eisenberg's
//
//  Created by Olivia Taylor on 11/1/16.
//  Copyright © 2016 Olivia Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate {

    @IBOutlet var cmonInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        let image:UIImage = UIImage(named: "cmon_in")!
        self.cmonInButton.setImage(image, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pushHard(recognizer: UITapGestureRecognizer) {
        
        if self.cmonInButton.imageView?.image == UIImage(named: "cmon_in") {
            let newImage = UIImage(named: "push_hard")
            self.cmonInButton.setImage(newImage, for: .normal)
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let scrollingVC:ScrollingViewController = storyboard.instantiateViewController(withIdentifier: "ScrollingViewController") as! ScrollingViewController
            self.navigationController?.pushViewController(scrollingVC, animated: true)
        }
        
    }

}

