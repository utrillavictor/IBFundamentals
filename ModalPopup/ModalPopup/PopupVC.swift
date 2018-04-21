//
//  PopupVC.swift
//  ModalPopup
//

import UIKit

class PopupVC: UIViewController {

    @IBOutlet weak var popupview: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        popupview.layer.cornerRadius = 10
        popupview.layer.masksToBounds = true
    }

    @IBAction func closePopup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
