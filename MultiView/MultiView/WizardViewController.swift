//
//  WizardViewController.swift
//  MultiView
//
//  Created by Colin Quelle on 2/24/21.
//  Copyright © 2021 Colin Quelle. All rights reserved.
//

import UIKit

class WizardViewController: UIViewController {

    @IBOutlet var attackButton: UIButton!;
    @IBOutlet var continueButton: UIButton!;
    @IBOutlet var wizardLabel: UILabel!;
    @IBOutlet var wizardImage: UIImageView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        continueButton.isHidden = true;
        wizardLabel.text = "Oh no! The Wizard has taken over the Castle. Attack!!";
    }
    
    @IBAction func attackWizard(_sender: UIButton){
        continueButton.isHidden = false;
        attackButton.isHidden = true;
        wizardImage.isHidden = true;
        wizardLabel.text = "The Wizard has finally been defeated!!";
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
