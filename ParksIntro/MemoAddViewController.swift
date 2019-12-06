//
//  MemoAddViewController.swift
//  ParksIntro
//
//  Created by comsoft on 06/12/2019.
//  Copyright © 2019 comsoft. All rights reserved.
//

import UIKit

class MemoAddViewController: UIViewController {

    @IBOutlet var tfTitleItem: UITextField!
    @IBOutlet var tfContextItem: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAddItem(_ sender: UIButton) {
        itemsTitle.append(tfTitleItem.text!)
        itemsContext.append(tfContextItem.text!)
        tfTitleItem.text=""
        tfContextItem.text=""
        _ = navigationController?.popViewController(animated: true)
    }

}
