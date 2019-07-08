//
//  NOCListTableViewController.swift
//  NOCList2
//
//  Created by Marlon Raskin on 7/8/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class NOCListTableViewController: UITableViewController {

	var agents: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)] = []
	
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Agents"
		loadNOCList()
    }

    // MARK: - Table view data source
	
	override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
		return "\(compromisedCount()) agents compromised"
	}
	
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return agents.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AgentCell", for: indexPath)
		let agent = agents[indexPath.row]
		cell.textLabel?.text = agent.coverName
		cell.detailTextLabel?.text = agent.realName
		if agent.compromised == true {
			cell.backgroundColor = #colorLiteral(red: 1, green: 0.190891893, blue: 0.4019592953, alpha: 1)
		} else {
			cell.backgroundColor = #colorLiteral(red: 0.1215686275, green: 0.1294117647, blue: 0.1411764706, alpha: 1)
			cell.textLabel?.textColor = .white
			cell.detailTextLabel?.textColor = .white
		}
        return cell
    }


	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectedIndexPath = tableView.indexPathForSelectedRow!
		let selectedAgent = agents[selectedIndexPath.row]
		let agentDetailVC = segue.destination as! AgentDetailViewController
		agentDetailVC.agent = selectedAgent
    }

	
	private func loadNOCList() {
		let agentOne = (coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: true)
		let agentTwo = (coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: false)
		let agentThree = (coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false)
		let agentFour = (coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true)
		let agentFive = (coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false)
		let agentSix = (coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false)
		let agentSeven = (coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true)
		let agentEight = (coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false)
		let agentNine = (coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true)
		let agentTen = (coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true)
		let agentEleven = (coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)
		
		agents = [agentOne, agentTwo, agentThree, agentFour, agentFive, agentSix, agentSeven, agentEight, agentNine, agentTen, agentEleven]
	}
	
	private func compromisedCount() -> String {
		var count = 0
		for agent in agents {
			if agent.compromised == true {
				count += 1
			}
		}
		return "\(count)"
	}
	
}
