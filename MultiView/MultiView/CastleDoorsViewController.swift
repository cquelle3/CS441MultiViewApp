//
//  CastleDoorsViewController.swift
//  MultiView
//
//  Created by Colin Quelle on 2/24/21.
//  Copyright © 2021 Colin Quelle. All rights reserved.
//

import UIKit

class CastleDoorsViewController: UIViewController {

    @IBOutlet var unlockButton: UIButton!;
    @IBOutlet var enterButton: UIButton!;
    @IBOutlet var doorLabel: UILabel!;
    @IBOutlet var doorImage: UIImageView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(EventManagement.manage.getDoor() == true){
            doorLabel.text = "The Door has been unlocked!";
            enterButton.isHidden = false;
            unlockButton.isHidden = true;
            doorImage.isHidden = true;
        }
        else if(EventManagement.manage.getDoor() == false && EventManagement.manage.getKey() == true){
            doorLabel.text = "You might want to use that key you picked up!";
            enterButton.isHidden = true;
            unlockButton.isHidden = false;
            doorImage.isHidden = false;
        }
        else{
            doorLabel.text = "The Castle doors are locked! A key might work...";
            enterButton.isHidden = true;
            unlockButton.isHidden = true;
            doorImage.isHidden = false;
        }
    }
    
    @IBAction func unlock(_sender: UIButton){
        EventManagement.manage.setDoor(val: true);
        doorLabel.text = "The Door has been unlocked!";
        enterButton.isHidden = false;
        unlockButton.isHidden = true;
        doorImage.isHidden = true;
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
