//
//  KeyViewController.swift
//  MultiView
//
//  Created by Colin Quelle on 2/24/21.
//  Copyright © 2021 Colin Quelle. All rights reserved.
//

import UIKit

class KeyViewController: UIViewController {

    @IBOutlet var keyButton: UIButton!;
    @IBOutlet var keyLabel: UILabel!;
    @IBOutlet var keyImage: UIImageView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(EventManagement.manage.getKey() == true){
            keyButton.isHidden = true;
            keyLabel.isHidden = true;
            keyImage.isHidden = true;
        }
    }
    
    @IBAction func takeKey(_sender: UIButton){
        keyButton.isHidden = true;
        keyLabel.isHidden = true;
        keyImage.isHidden = true;
        EventManagement.manage.setKey(val: true);
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
