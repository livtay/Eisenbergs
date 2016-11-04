//
//  WebViewController.swift
//  Eisenberg's
//
//  Created by Olivia Taylor on 11/4/16.
//  Copyright © 2016 Olivia Taylor. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {

    var url:URL?
    var webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.webView.frame = self.view.frame
        self.webView.load(URLRequest(url: self.url!))
        self.view.addSubview(self.webView)
    }

}
