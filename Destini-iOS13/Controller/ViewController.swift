//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI()
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let choice = (sender.titleLabel?.text)!
        
        storyBrain.nextStory(userChoice: choice)
        
        updateUI()
    }
    
    func updateUI() {
        self.storyLabel.text = storyBrain.getStory().title
        self.choice1Button.setTitle(storyBrain.getStory().choice1, for: UIControl.State.normal)
        self.choice2Button.setTitle(storyBrain.getStory().choice2, for: UIControl.State.normal)
    }
    
}

