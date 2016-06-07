//
//  EncryptViewController.swift
//  hCrypto
//
//  Created by Hun Jae Lee on 6/7/16.
//  Copyright © 2016 Hun Jae Lee. All rights reserved.
//

import Cocoa

class EncryptViewController: NSViewController {
	@IBOutlet var inputTextField: NSTextField!
	@IBOutlet var outputTextField: NSTextField!
	@IBOutlet var keyField: NSTextField!
	@IBOutlet var submitButton: NSButton!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
	
	@IBAction func encryptButtonPressed(sender: NSButton) {
		if inputTextField.stringValue == "" {
			// TODO: pop an alert to user
		} else {
			let cryptor = hCryptor()
			let (ciphertext, key) = cryptor.encrypt(inputTextField.stringValue)
			outputTextField.stringValue = ciphertext
			keyField.stringValue = key
		}
	}
	
    
}
