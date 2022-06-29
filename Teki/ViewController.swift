//
//  ViewController.swift
//  Teki
//
//  Created by Andreea Draghici on 2022-02-18.
//

import UIKit

class ViewController: UIViewController {
    var celebrities = ["le Steve Jobs", "le Zinedine Zidane", "la Madonna", "le Karl Lagarfeld", "la Scarlett Johansson"]
    var activities = ["du dancefloor", "du barbecue", "de la surprise ratée", "des blagues lourdes", "de la raclette party"]
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBAction func changeQuote() {
        // On séléctionne un élément alétoire parmi les célébrités
        let randomIndex1 = Int(arc4random_uniform(UInt32(celebrities.count)))
        let celebrity = celebrities[randomIndex1]
        
        print(celebrity)
        // On séléctionne un élément aléatoire parmi les activités
        let randomIndex2 = Int(arc4random_uniform(UInt32(activities.count)))
        
        let activity = activities[randomIndex2]
        
       
        let quote = "Tu es " + celebrity + " " + activity + " !"
        quoteLabel.text = quote
    }
    
}

