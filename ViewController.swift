//
//  ViewController.swift
//  TableView
//
//  Created by Mac on 05/05/2021 / india.
//

import UIKit

class ViewController: UIViewController {
    var myDict: [String:[String]] = ["First":["Minal","Snehal","Divya"],"Second":["Krushna","Rishbah"]]
    var headerArray: [String] = ["First","Second"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myDict[headerArray[section]]!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = myDict[headerArray[indexPath.section]]![indexPath.row]
        cell?.detailTextLabel?.text = "Learning TableView"
        return cell!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headerArray[section]
    }
}
