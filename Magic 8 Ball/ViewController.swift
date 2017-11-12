//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Tyrone Saulon on 2017-11-10.
//  Copyright © 2017 Tyrone Saulon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magic8Ball: UIImageView!
    
    var ballIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButton(_ sender: UIButton)
    {
        updateBall()
    }
    
    func updateBall()
    {
        ballIndex = Int(arc4random_uniform(5)) + 1
        
        magic8Ball.image = UIImage(named: "ball\(ballIndex)")
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBall()
    }
}

