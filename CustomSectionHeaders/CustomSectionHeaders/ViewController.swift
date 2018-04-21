//
//  ViewController.swift
//  CustomSectionHeaders
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    let sectionTitles: [String] = ["Batman", "Ironman", "Captain America"]
    let sectionImages: [UIImage] = [#imageLiteral(resourceName: "batman"), #imageLiteral(resourceName: "ironman"), #imageLiteral(resourceName: "captain")]

    let s1Data: [String] = ["Christian Bale", "Adam West", "Michael Keaton"]
    let s2Data: [String] = ["Robert Downey Jr."]
    let s3Data: [String] = ["Chris Evans", "Matt Salinger", "Reb Brown"]

    var sectionData: [Int: [String]] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self

        sectionData = [0: s1Data, 1: s2Data, 2: s3Data]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (sectionData[section]?.count)!
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44.0
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        let image: UIImageView = UIImageView(image: sectionImages[section])
        image.frame = CGRect(x: 8, y: 8, width: 35, height: 35)
        view.addSubview(image)

        let label = UILabel()
        label.text = sectionTitles[section]
        label.textColor = UIColor.white
        label.frame = CGRect(x: 51, y: 5, width: 200, height: 35)
        view.addSubview(label)

        return view
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellId")

        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        }

        cell?.textLabel?.text = sectionData[indexPath.section]?[indexPath.row]
        return cell!
    }

}
