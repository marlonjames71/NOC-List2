//
//  NOCListTableTableViewController.swift
//  NOCList2
//
//  Created by Marlon Raskin on 7/8/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class NOCListTableViewController: UITableViewController {

	private var agents: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)] = []
	
    override func viewDidLoad() {
        super.viewDidLoad()
		self.title = "Agents"
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }


	
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
    }
	
	private func loadNOCList()
	{
//		let (coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: true)
//		let (coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: false)
//		let (coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false)
//		let (coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true)
//		let (coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false)
//		let (coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false)
//		let (coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true)
//		let (coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false)
//		let (coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true)
//		let (coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true)
//		let (coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)

	}
	
}
