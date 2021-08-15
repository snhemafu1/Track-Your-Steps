//
//  ViewController.swift
//  Track_your_steps
//
//  Created by Sunita Nhemafuki on 8/5/21.
//  Copyright © 2021 Sunita Nhemafuki. All rights reserved.
//

    import UIKit
    import HealthKit

   class ViewController: UIViewController {
        
        @IBOutlet weak var displayBox: UILabel!
        let quote1 = "Keep going"
        let quote2 = "Walk a mile everyday"
        let quote3 = "You can do it"
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            }

        @IBAction func buttonController(_ sender: Any) {
            
            let n = Int.random(in: 1...3)
            
            if n == 1
            {
                displayBox.text = quote1;
            }
            if n == 2
            {
                displayBox.text = quote2;
            }
            if n == 3
            {
                displayBox.text = quote3;
            }
        }
    }
        



    
    
