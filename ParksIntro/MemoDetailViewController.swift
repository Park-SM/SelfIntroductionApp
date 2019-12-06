//
//  MemoDetailViewController.swift
//  ParksIntro
//
//  Created by comsoft on 06/12/2019.
//  Copyright © 2019 comsoft. All rights reserved.
//

import UIKit

class MemoDetailViewController: UIViewController {

    var receiveTitle = ""
    var receiveContext = ""
    
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var lblContext: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        lblTitle.text = receiveTitle
        lblContext.text = receiveContext
    }
    
    func receiveItem(title: String, context: String)
    {
        receiveTitle = title
        receiveContext = context
    }

}
