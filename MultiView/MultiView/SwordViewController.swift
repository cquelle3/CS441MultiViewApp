//
//  SwordViewController.swift
//  MultiView
//
//  Created by Colin Quelle on 2/24/21.
//  Copyright © 2021 Colin Quelle. All rights reserved.
//

import UIKit

class SwordViewController: UIViewController {

    @IBOutlet var swordButton: UIButton!;
    @IBOutlet var swordLabel: UILabel!;
    @IBOutlet var swordImage: UIImageView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(EventManagement.manage.getSword() == true){
            swordLabel.isHidden = true;
            swordButton.isHidden = true;
            swordImage.isHidden = true;
        }
    }
    
    @IBAction func takeSword(_sender: UIButton){
        swordButton.isHidden = true;
        swordLabel.isHidden = true;
        swordImage.isHidden = true;
        EventManagement.manage.setSword(val: true);
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
