//
//  AgentDetailViewController.swift
//  NOCList2
//
//  Created by Marlon Raskin on 7/8/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {
	
	var agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!

	@IBOutlet weak var coverNameLabel: UILabel!
	@IBOutlet weak var realNameLabel: UILabel!
	@IBOutlet weak var accessLabel: UILabel!
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
		title = "Agent Info"
		coverNameLabel.text = agent.coverName
		realNameLabel.text = agent.realName
		accessLabel.text = "\(agent.accessLevel)"
		if agent.compromised == true {
			view.backgroundColor = #colorLiteral(red: 1, green: 0.190891893, blue: 0.4019592953, alpha: 1)
		}
    }
}
