//
//  ViewController.swift
//  aging_people
//
//  Created by Natalie Nuno on 3/12/18.
//  Copyright © 2018 Natalie Nuno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    
    var age: Int = Int(arc4random_uniform(100))
    
    var people: [String] = ["George", "Betty", "Frank", "Jose", "Elda", "Winfredo", "Zed", "Sara", "Jefradia", "Abraham", "Anna", "Melinda"]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension ViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = people[indexPath.row]
        cell.detailTextLabel?.text = String(arc4random_uniform(100)) + " years old"
        return cell

    }
    
}
