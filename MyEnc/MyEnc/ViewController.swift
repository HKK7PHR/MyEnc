//
//  ViewController.swift
//  MyEnc
//
//  Created by Ming Hacker on 2/20/22.
//

import Cocoa
import CryptoKit
import SwiftUI


var MyInput: String = ""
var MyOutput:String = ""

func dialogOKCancel(question: String, text: String) -> Bool {
        let myPopup: NSAlert = NSAlert()
        myPopup.messageText = question
        myPopup.informativeText = text
        myPopup.alertStyle = NSAlert.Style.informational
        myPopup.addButton(withTitle: "OK")
        return myPopup.runModal() == NSApplication.ModalResponse.alertFirstButtonReturn
    }



class ViewController: NSViewController {

    @IBOutlet var MyTextBox1: NSTextField!
    
    @IBOutlet var MyTextBox2: NSTextField!
    
    @IBAction func MyButton1(_ sender: NSButton) { // encrypt
        MyInput = MyTextBox1.stringValue
        
        // encode
        MyOutput = CipherContent.shift(inputText: MyInput, by: 13) //ROT13
     
        MyTextBox2.stringValue = MyOutput
        NSSound.beep() //beep
    }
    
    @IBAction func MyButton2(_ sender: NSButton) { // clear
        //Clear
        MyTextBox1.stringValue.removeAll() // clear the text box
        MyTextBox2.stringValue.removeAll() // clear the text box
        MyInput = "" // clean the string
        MyOutput = "" // clean the string
        NSSound.beep() //beep
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSSound.beep() //beep
    _ = dialogOKCancel(question: " Muppet Encode/Decode ", text: " From Patrick Roberts Software \r \n All Rights Reserved Copyright 2022 ") // About Dialog
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

