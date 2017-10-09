//
//  ViewController.swift
//  Propeller
//
//  Created by Felix Ayala on 5/9/16.
//  Copyright © 2016 Felix Ayala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	// MARK: - IBOutlets
	@IBOutlet weak var muhButton: Propeller!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		muhButton.addTarget(self, action: #selector(ViewController.showActivityIndicator), for: .touchUpInside)
	}
	
	@objc func showActivityIndicator() {
		muhButton.startAnimating()
	}

}

