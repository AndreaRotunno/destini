//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

var storyBrain = StoryBrain()

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        UpdateUI()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()

    }

    func UpdateUI(){
        storyLabel.text = storyBrain.story[currentDestination].title
        choice1Button.setTitle(storyBrain.story[currentDestination].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.story[currentDestination].choice2, for: .normal)    }
}

