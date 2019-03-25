//
//  ViewController.swift
//  XYZ
//
//  Created by Molnár Csaba on 2019. 03. 23..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabels)
    }
    
        func updateLabels(data: CMAccelerometerData?,error:  Error?) {
            guard  let accelometerData = data else { return}
            print(accelometerData)
            }
}


