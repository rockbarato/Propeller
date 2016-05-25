//
//  Propeller.swift
//  Propeller
//
//  Created by Felix Ayala on 5/9/16.
//  Copyright © 2016 Felix Ayala. All rights reserved.
//

import UIKit

class Propeller: UIButton {
	
	// MARK: - Properties
	let helix = UIActivityIndicatorView(activityIndicatorStyle: .Gray)
	var legend:String?
	var loading: Bool = false
	
	// MARK: - Initializers
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		self.setup()
	}
	
	func setup() {
		
		legend = self.currentTitle
		
		helix.frame = self.frame
		helix.center = CGPointMake(CGRectGetWidth(self.frame) / 2, CGRectGetHeight(self.frame) / 2)
		
		// Configure State
		self.loading = false
		
	}
	
	func startAnimating(indicatorStyle:UIActivityIndicatorViewStyle = .Gray) {
		self.setTitle("", forState: .Normal)
		self.enabled = false
		helix.startAnimating()
		self.addSubview(helix)
	}
	
	func stopAnimating() {
		self.setTitle(legend, forState: .Normal)
		self.enabled = true
		helix.removeFromSuperview()
	}
}
