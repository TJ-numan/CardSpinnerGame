//
//  ViewController.swift
//  CardSpinnerGame
//
//  Created by Tanvir on 12/1/19.
//  Copyright © 2019 TJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var PC1: UIImageView!
    @IBOutlet weak var PC3: UIImageView!
    @IBOutlet weak var PC2: UIImageView!
    @IBOutlet weak var PC4: UIImageView!
    
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player3: UILabel!
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var player4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func spin(_ sender: Any) {
        
        for i in 0...14{
            let r = Int.random(in: 1...14)
            print(r)
            PC1.image = UIImage(named: String(r))
            player1.text = String(r)
            print("\(i) :time")       }
        
        for i in 0...14{
            let r = Int.random(in: 1...14)
            print(r)
            PC2.image = UIImage(named: String(r))
            player2.text = String(r)
            print("\(i) :time")       }
        
        for i in 0...14{
            let r = Int.random(in: 1...14)
            print(r)
            PC3.image = UIImage(named: String(r))
            player3.text = String(r)
            print("\(i) :time")       }
        

        
        for i in 0...14{
            let r = Int.random(in: 1...14)
            print(r)
            PC4.image = UIImage(named: String(r))
            player4.text = String(r)
            print("\(i) :time")       }
        
        
    }
    
    
    
    
}

