//
//  WWWViewController.swift
//  ParksIntro
//
//  Created by comsoft on 06/12/2019.
//  Copyright © 2019 comsoft. All rights reserved.
//

import UIKit
import WebKit

class WWWViewController: UIViewController {
    
    @IBOutlet var myWebView: WKWebView!
    @IBOutlet var myActivityIndicator: UIActivityIndicatorView!
    
    func loadWebPage(_ url: String) {
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
        
        myWebView.addObserver(self, forKeyPath: #keyPath(WKWebView.isLoading), options: .new , context: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadWebPage("http://github.com/Park-SM")
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "loading" {
            if myWebView.isLoading {
                myActivityIndicator.startAnimating()
                myActivityIndicator.isHidden = false
            } else {
                myActivityIndicator.stopAnimating()
                myActivityIndicator.isHidden = true
            }
        }
    }
    
    @IBAction func btnGoSite1(_ sender: UIButton) {
        loadWebPage("https://blog.naver.com/tkdals4146")
    }
    
    @IBAction func btnGoSite2(_ sender: UIButton) {
        loadWebPage("https://github.com/Park-SM")
    }
    
    @IBAction func btnGoSite3(_ sender: UIButton) {
        loadWebPage("http://smparkworld.com")
    }

    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        myWebView.stopLoading()
    }
    
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
    
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
        myWebView.goBack()
    }
    
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {
        myWebView.goForward()
    }

}
