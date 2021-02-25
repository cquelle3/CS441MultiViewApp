//
//  MonsterViewController.swift
//  MultiView
//
//  Created by Colin Quelle on 2/24/21.
//  Copyright © 2021 Colin Quelle. All rights reserved.
//

import UIKit

class MonsterViewController: UIViewController {

    @IBOutlet var attackButton: UIButton!;
    @IBOutlet var continueButton: UIButton!;
    @IBOutlet var monsterLabel: UILabel!;
    @IBOutlet var monsterImage: UIImageView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(EventManagement.manage.getMonster() == true){
            monsterLabel.text = "The monster has been slain!";
            continueButton.isHidden = false;
            attackButton.isHidden = true;
            monsterImage.isHidden = true;
        }
        else if(EventManagement.manage.getMonster() == false && EventManagement.manage.getSword() == true){
            monsterLabel.text = "Use your trusty sword and attack!!";
            continueButton.isHidden = true;
            attackButton.isHidden = false;
            monsterImage.isHidden = false;
        }
        else{
            monsterLabel.text = "A monster blocks the way! If only you had a weapon...";
            continueButton.isHidden = true;
            attackButton.isHidden = true;
            monsterImage.isHidden = false;
        }
    }
    
    @IBAction func attack(_sender: UIButton){
        EventManagement.manage.setMonster(val: true);
        monsterLabel.text = "The monster has been slain!";
        continueButton.isHidden = false;
        attackButton.isHidden = true;
        monsterImage.isHidden = true;
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
