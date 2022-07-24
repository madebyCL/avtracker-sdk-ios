//
//  GoalsViewController.swift
//  ios
//
//  Created by Cornelius Horstmann on 08.10.18.
//  Copyright © 2018 Mattias Levin. All rights reserved.
//

import UIKit
import AvTracker

class GoalsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        AvTracker.shared.track(view: ["menu","goals"])
    }
    
    @IBAction func donateButtonTapped(_ sender: Any) {
       AvTracker.shared.trackGoal(id: 1, revenue: 5)
    }
    
}

