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
        
        for _ in 0...14{
            let r = Int.random(in: 1...14)
            PC1.image = UIImage(named: String(r))
            animate(imageView: PC1)
            player1.text = "Player 1 : " + String(r)
             }
        
        for _ in 0...14{
            let r = Int.random(in: 1...14)
            PC2.image = UIImage(named: String(r))
            animate(imageView: PC2)
            player2.text = "Player 2 : " + String(r)
                }
        
        for _ in 0...14{
            let r = Int.random(in: 1...14)
            PC3.image = UIImage(named: String(r))
            animate(imageView: PC3)
            player3.text = "Player 3 : " + String(r)
                  }
        

        
        for _ in 0...14{
            let r = Int.random(in: 1...14)
            PC4.image = UIImage(named: String(r))
            animate(imageView: PC4)
            player4.text = "Player 4 : " + String(r)
                  }
        
        
    }
    func animate(imageView: UIImageView) -> Void {
        UIView.transition(with: imageView, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            imageView.image = UIImage(named: "D3")
            UIView.transition(with: imageView, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
    }
    
}

