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
		
		muhButton.addTarget(self, action: #selector(showActivityIndicator), forControlEvents: .TouchUpInside)
	}
	
	func showActivityIndicator() {
		
		muhButton.startAnimating()
		
		let t = dispatch_time(DISPATCH_TIME_NOW, Int64(5 * Double(NSEC_PER_SEC)))
		dispatch_after(t, dispatch_get_main_queue(), {
			self.muhButton.stopAnimating()
		})
	}

}

