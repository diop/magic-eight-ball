//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Fodé Diop on 10/22/18.
//  Copyright © 2018 Fodé Diop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let startups = [
        "Make School",
        "Uber",
        "Netflix",
        "Facebook",
        "Google",
        "Kickstarter",
        "Spotify",
        "Airbnb",
        "Snapchat",
        "YouTube",
        "Dropbox",
        "Amazon",
        "Craigslist",
        "Tinder",
        "Instagram",
        "Tesla",
        "Twitter",
        "SpaceX"
    ]
    
    let categories = [
        "Dogs",
        "Books",
        "Gamers",
        "Star Wars",
        "Bitcoin",
        "Goats",
        "Zombies",
        "Rich People",
        "Swimmers",
        "Florida",
        "Vampires",
        "Dragons",
        "Internet of Things",
        "Mars",
        "Cryptocurrency",
        "Mosquito Repellent",
        "Fidget Spinners",
        "Sun Screen",
        "Water Bottles",
        "Lost Travelers",
        "Superheroes"
    ]
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func generateAnswer() {
        let maxIndex = UInt32(startups.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = startups[randomIndex]
        categoriesLabel.text = categories[randomIndex]
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        generateAnswer()
    }
    
    @IBAction func shakeButtonTapped(_ sender: Any) {
        print("All shook!")
        
        generateAnswer()
    }
    
}

