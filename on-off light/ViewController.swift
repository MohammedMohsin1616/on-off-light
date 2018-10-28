//
//  ViewController.swift
//  on-off light
//
//  Created by Mohammed Mohsin Sayed on 10/28/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onOffLabel: UILabel!
    @IBOutlet weak var onOffButton: UIButton!
    var status: SwitchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onOffButtonPressed(_ sender: Any) {
        status.toggle()
        if status == .off {
            view.backgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1) 
            onOffLabel.text = "🌚 OFF 🌚"
            onOffLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            onOffButton.setImage(UIImage(named: "offBtn")!, for: .normal)
        }
        else {
            
            view.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            onOffLabel.text = "🌝 ON 🌝"
            onOffLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
            onOffButton.setImage(UIImage(named: "onBtn")!, for: .normal)
        }
    }
    
}

