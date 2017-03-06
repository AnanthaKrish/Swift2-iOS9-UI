//
//  ViewController.swift
//  SafariViewController
//
//  Created by Paige Sun on 2017-03-05.
//  Copyright © 2017 Paige Sun. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    let url = URL(string: "https://www.shopify.ca")!

    @IBAction func sfSafariTapped(_ sender: Any) {
        let safari = SFSafariViewController(url: url)
        safari.title = "Shopify"
        safari.delegate = self
        present(safari, animated: true, completion: nil)
    }
    
    @IBAction func safariTapped(_ sender: Any) {
        let safariController = SafariViewController(safariDelegate: self, safariTitle: "Shopify", url: url)
        present(safariController, animated: true) {}
    }
}

extension ViewController: SFSafariViewControllerDelegate {
    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        if !didLoadSuccessfully {
            print("issue loading safari")
        }
    }
}

extension ViewController: SafariViewControllerDelegate {
    func safariControllerDidFinish(_ controller: SafariViewController) {
        print("safariControllerDidFinish")
    }
}
