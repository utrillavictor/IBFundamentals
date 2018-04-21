//
//  ViewController.swift
//  TableViewHeaderAndFooter
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    var tableData: [String] = ["Link", "Zelda", "Ganon", "Epona"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self

/********* USING ONLY CODE *********/
//        let headerView = UIView()
//        headerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 44)
//        headerView.backgroundColor = UIColor.brown
//        tableView.tableHeaderView = headerView
//
//        let footerView = UIView()
//        footerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 44)
//        footerView.backgroundColor = UIColor.blue
//
//        tableView.tableHeaderView = headerView
//        tableView.tableFooterView = footerView
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellId")

        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        }

        cell?.textLabel?.text = tableData[indexPath.row]

        return cell!
    }
}
