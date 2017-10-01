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
        //let directoryURL = folderPath.stringValue
        let calendar = Calendar.current
        let aWeekAgo = calendar.date(byAdding: .day, value: -7, to: Date())!
        
        do {
            let directoryContent = try fileManager.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: [.creationDateKey], options: [.skipsSubdirectoryDescendants, .skipsHiddenFiles])
            for url in directoryContent {
                let resources = try url.resourceValues(forKeys: [.creationDateKey])
                let creationDate = resources.creationDate!
                if creationDate < aWeekAgo {
                    print(url)
                    // do somthing with the found files
                }
            }
        }
        catch {
            print(error)
        }
        
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

