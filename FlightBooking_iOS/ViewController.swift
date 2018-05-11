//
//  ViewController.swift
//  FlightBooking_iOS
//
//  Created by hoya kim on 11/05/2018.
//  Copyright © 2018 ChameleoN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var departureBtn: UIButton!
	@IBOutlet weak var returnLabel: UILabel!
	@IBOutlet weak var returnBtn: UIButton!
	@IBOutlet weak var datePicker: UIDatePicker!
	
	var btnTag:Int = 1
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		returnLabel.isHidden = true
		returnBtn.isHidden = true
		datePicker.isHidden = true
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		self.view.endEditing(true)
		datePicker.isHidden = true
	}

	@IBAction func showDatePickerAction(_ sender: UIButton) {
		if datePicker.isHidden == false {
			datePicker.isHidden = true
		}
		else {
			datePicker.isHidden = false
		}
		btnTag = sender.tag
	}
	
	@IBAction func showReturnAction(_ sender: UISwitch) {
		returnLabel.isHidden = !sender.isOn
		returnBtn.isHidden = !sender.isOn
	}
	
	@IBAction func selectedDateAction(_ sender: UIDatePicker) {
		let formatter = DateFormatter()
		formatter.dateFormat = "YY-MM-dd HH:mm"
		let date = formatter.string(from: sender.date)
		if (btnTag == 1) {
			departureBtn.setTitle(date, for: UIControlState.normal)
		} else {
			returnBtn.setTitle(date, for: UIControlState.normal)
		}
	}
}

