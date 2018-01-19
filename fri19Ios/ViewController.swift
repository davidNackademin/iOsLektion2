//
//  ViewController.swift
//  fri19Ios
//
//  Created by David Svensson on 2018-01-19.
//  Copyright © 2018 David Svensson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
      let translataion = sender.translation(in: self.view)
        if let view = sender.view {
            view.center = CGPoint(x: view.center.x + translataion.x , y:view.center.y + translataion.y )
        }
        sender.setTranslation(CGPoint.zero, in: self.view)
        
    }
    @IBAction func unwindAction(segue: UIStoryboardSegue) {
        
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        performSegue(withIdentifier: "goToDog", sender: self)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

