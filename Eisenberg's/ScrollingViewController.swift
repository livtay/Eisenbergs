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
        
        let alertController = UIAlertController(title: "Call us now!", message: "(212) 675-5096", preferredStyle: .alert)
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
    
    func toWebVC(url:String) {
        
        let webVC:WebViewController = WebViewController()
        webVC.url = URL(string: url)
        self.navigationController?.pushViewController(webVC, animated: true)
    }
    
    
    @IBAction func findFacebook(_ sender: AnyObject) {
        
        toWebVC(url: "https://facebook.com/Eisenbergs-Sandwich-Shop-116518457428/")
    }
 
    @IBAction func toSeamless(_ sender: Any) {
        
        toWebVC(url: "https://www.seamless.com/menu/eisenbergs-sandwich-shop-inc-174-5th-ave-new-york-/292071")
    }
    
    @IBAction func toDelivery(_ sender: Any) {
        
        toWebVC(url: "https://www.delivery.com/cities/nyc/categories/restaurant/eisenbergs-sandwich-shop")
    }
    
    @IBAction func toBusinessInsider(_ sender: Any) {
        
        toWebVC(url: "http://www.businessinsider.com/pictures-eisenbergs-deli-nyc-2012-1?op=1")
    }
    
    @IBAction func toNyTimes(_ sender: Any) {
        
        toWebVC(url: "http://www.nytimes.com/2006/03/23/nyregion/sandwich-shop-stays-saved-by-a-regular.html")
    }
    
    @IBAction func toMap(_ sender: Any) {
        
        toWebVC(url: "https://www.google.com/maps/place/Eisenberg's+Sandwich+Shop/@40.741141,-73.9924168,17z/data=!3m1!4b1!4m5!3m4!1s0x89c25baa57b9349f:0x32281a7b117ac87f!8m2!3d40.741137!4d-73.9902228")
    }
    
    @IBAction func toVimeo(_ sender: Any) {
        
        toWebVC(url: "https://vimeo.com/38819838")
    }
    
    @IBAction func toKlezmer(_ sender: Any) {
        
        toWebVC(url: "https://www.youtube.com/watch?v=ZQ4mvzMhTZE")
    }
    
}












































