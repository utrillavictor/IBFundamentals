//
//  ViewController.swift
//  PopupWithinVC
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundButton: UIButton!
    @IBOutlet weak var centerPopupConstraint: NSLayoutConstraint!
    @IBOutlet weak var popupView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popupView.layer.cornerRadius = 10
        popupView.layer.masksToBounds = true
    }

    @IBAction func popupDidTap(_ sender: Any) {
        centerPopupConstraint.constant = 0

        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)

        UIView.animate(withDuration: 0.3) {
            self.backgroundButton.alpha = 0.7
        }
    }

    @IBAction func closePopup(_ sender: Any) {
        centerPopupConstraint.constant = -350
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
            self.backgroundButton.alpha = 0
        }
    }
}
