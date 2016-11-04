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
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }

    func animateFunction() {
        
        if self.getIt.image == self.getItImage {
            self.getIt.image = self.orDontImage
        } else {
            self.getIt.image = self.getItImage
        }
    }

    @IBAction func callPhoneNumber(_ sender: AnyObject) {
        
        let alertController = UIAlertController(title: "(212)675-5096", message: "Call us?", preferredStyle: .alert)
        let callAction = UIAlertAction(title: "Call!", style: .default, handler: {
            action in
                let url = NSURL(string: "tel://2126755096")
                UIApplication.shared.open(url as! URL)
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(callAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func toCelebVC(_ sender: AnyObject) {
        
        let storyboard = UIStoryboard(name: "Main", bundle:nil)
        let celebVC:CelebCollectionViewController = storyboard.instantiateViewController(withIdentifier: "CelebViewController") as! CelebCollectionViewController
        self.navigationController?.pushViewController(celebVC, animated: true)
    }
    
    @IBAction func findFacebook(_ sender: AnyObject) {
        
        let webVC:WebViewController = WebViewController()
        webVC.url = URL(string: "https://facebook.com/Eisenbergs-Sandwich-Shop-116518457428/")
        self.navigationController?.pushViewController(webVC, animated: true)
    }
 
}












































