//
//  ViewController.swift
//  Archive_Candidates
//
//  Created by James McNair on 2017-09-25.
//  Copyright © 2017 James McNair. All rights reserved.
//

import Cocoa
import Foundation


class ViewController: NSViewController {
    
    
    
    @IBOutlet weak var baseDirectory: NSTextField!
    

    @IBOutlet weak var numberDays: NSTextField!
    

    @IBOutlet weak var resultsMessage: NSTextField!

       @IBAction func ageChanged(_ sender: Any) {
       resultsMessage.stringValue = "Liste des dossiers de plus de " + numberDays.stringValue + " jours."
    }



    
    
    @IBAction func sourceFolder(_ sender: NSTextField) {
        
        let daysAgo = numberDays.intValue * -1
        
        let fileManager = FileManager.default
        
        
        let DirectoryURL = URL(fileURLWithPath: baseDirectory.stringValue)

        let calendar = Calendar.current
        let age = calendar.date(byAdding: .day, value: Int(daysAgo), to: Date())!
        
        
        
        
        
        do {
            let enumerator = fileManager.enumerator(at: DirectoryURL, includingPropertiesForKeys: [.creationDateKey], options: [.skipsSubdirectoryDescendants, .skipsHiddenFiles], errorHandler: { (url, error) -> Bool in
                print("An error \(error) occurred at \(url)")
                return true
            })
            while let url = enumerator?.nextObject() as? URL {
                let resources = try url.resourceValues(forKeys: [.creationDateKey])
                let creationDate = resources.creationDate!
                if creationDate < age {
                    print(url)
                    // do somthing with the found files
                }
            }
            
        }
        catch {
            print(error)
        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
   
    
    
    
    
    
    
    
    
    

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

