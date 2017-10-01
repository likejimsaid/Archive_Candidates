//
//  ViewController.swift
//  Archive_Candidates
//
//  Created by James McNair on 2017-09-25.
//  Copyright © 2017 James McNair. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    
    
    

    @IBOutlet weak var numberDays: NSTextField!
    
    @IBAction func ageChanged(_ sender: Any) {
       resultsMessage.stringValue = "Liste des dossiers de plus de " + numberDays.stringValue + " jours"
        
    }
    
    @IBAction func folderPath(_ sender: NSTextField) {
    }
    
    
    
    @IBOutlet weak var resultsList: NSScrollView!
    

    @IBOutlet weak var resultsMessage: NSTextField!
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }














}

