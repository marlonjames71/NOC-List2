//
//  AgentDetailViewController.swift
//  NOCList2
//
//  Created by Marlon Raskin on 7/8/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {
	
	var agent: (covername: String, realName: String, accessLevel: Int, compromised: Bool)!

	@IBOutlet weak var realNameLabel: UILabel!
	@IBOutlet weak var accessLabel: UILabel!
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		title = "Cover: \(agent.covername)"
		realNameLabel.text = agent.realName
		accessLabel.text = "\(agent.accessLevel)"
		if agent.compromised == true {
			view.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
		}
    }
}
