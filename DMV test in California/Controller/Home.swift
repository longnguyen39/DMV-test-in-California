//
//  Home.swift
//  DMV test in California
//
//  Created by user166398 on 6/1/20.
//  Copyright © 2020 user166398. All rights reserved.
//

import UIKit

class ViewControllerHome: UIViewController {
    
    
    @IBOutlet weak var test1start: UIButton!
    @IBOutlet weak var buttonroot: UIButton!
    @IBOutlet var items: [UIButton]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        buttonAnimation()
    }
    
    
    func buttonAnimation () {
        test1start.layer.cornerRadius = 20
        test1start.layer.shadowOpacity = 0.4
        test1start.layer.shadowOffset = CGSize (width: 3, height: 2)
        test1start.layer.shadowRadius = 5
        
        buttonroot.layer.cornerRadius = 20
        buttonroot.layer.shadowOpacity = 0.4
        buttonroot.layer.shadowOffset = CGSize (width: 3, height: 2)
        buttonroot.layer.shadowRadius = 5
        
    }
    
    
    
    @IBAction func test1present(_ sender: Any) {
        performSegue(withIdentifier: "segue1", sender: self)
        
    }
    
    @IBAction func firstButton(_ sender: Any) {
        items.forEach { (button) in
            button.isHidden = !button.isHidden
        }
    }
    
    
    
    @IBAction func secondButton(_ sender: Any) {
        
        performSegue(withIdentifier: "segue2", sender: self)
        
        items.forEach { (button) in
            button.isHidden = !button.isHidden
        }
    }
    
    
    @IBAction func thirdButton(_ sender: Any) {
        performSegue(withIdentifier: "segue3", sender: self)
        
        items.forEach { (button) in
            button.isHidden = !button.isHidden
        }
    }
    
    
    @IBAction func fourthButton(_ sender: Any) {
        performSegue(withIdentifier: "segue4", sender: self)
       
        items.forEach { (button) in
            button.isHidden = !button.isHidden
        }
    }
}
