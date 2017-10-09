//
//  Propeller.swift
//  Propeller
//
//  Created by Felix Ayala on 5/9/16.
//  Copyright © 2016 Felix Ayala. All rights reserved.
//

import UIKit

/// Propeller es una clase el cual sirve para desplegar un ActivityIndicator dentro un UIButton al ser presionado
class Propeller: UIButton {
	
	// MARK: - Properties
	let helix = UIActivityIndicatorView(activityIndicatorStyle: .gray)
	var legend: String?
	var loading: Bool = false
	
	// MARK: - Initializers
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		self.setup()
	}
	
	func setup() {
		
		legend = self.currentTitle
		
		let width = self.frame.width
		let height = self.frame.height
		
		helix.frame = self.frame
		helix.center = CGPoint(x: (width / 2), y: (height / 2))
		
		// Configure State
		self.loading = false
		
	}
	
	// MARK: - Show/Hide
	func startAnimating(_ indicatorStyle: UIActivityIndicatorViewStyle = .gray) {
		self.setTitle(nil, for: UIControlState())
		self.isEnabled = false
		helix.startAnimating()
		self.addSubview(helix)
	}
	
	func stopAnimating() {
		self.setTitle(legend, for: UIControlState())
		self.isEnabled = true
		helix.removeFromSuperview()
	}
}
