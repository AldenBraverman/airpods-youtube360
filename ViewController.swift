//
//  ViewController.swift
//  airpods-youtube360
//
//  Created by Alden Braverman on 7/24/21.
//

import UIKit
import CoreMotion

var bIgnoreDeviceIMU = false;
var degreesYaw = 0.0
var degreesPitch = 0.0
var degreesRoll = 0.0

var yawEnabled = true
var pitchEnabled = true
var rollEnabled = true

class ViewController: UITableViewController, CMHeadphoneMotionManagerDelegate {
    @IBOutlet weak var pitchRotation: UILabel!
    @IBOutlet weak var rollRotation: UILabel!
    @IBOutlet weak var yawRotation: UILabel!
    
    var motionManager: CMHeadphoneMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        motionManager = CMHeadphoneMotionManager()
        motionManager.delegate = self
        if motionManager.isDeviceMotionAvailable {
            motionManager.startDeviceMotionUpdates(to: OperationQueue.main) { (motion, error) in
                if (yawEnabled){
                    degreesYaw = -(motion?.attitude.yaw)! * 180 / Double.pi
                } else {
                    degreesYaw = 0;
                }
                if (pitchEnabled){
                    degreesPitch = (motion?.attitude.pitch)! * 180 / Double.pi
                } else {
                    degreesPitch = 0;
                }
                if (rollEnabled){
                    degreesRoll = (motion?.attitude.roll)! * 180 / Double.pi
                } else {
                    degreesRoll = 0;
                }
                
                self.pitchRotation.text = "\(degreesYaw)"
                self.rollRotation.text = "\(degreesPitch)"
                self.yawRotation.text = "\(degreesRoll)"
            }
        }
    }
    
    func headphoneMotionManagerDidConnect(_ manager: CMHeadphoneMotionManager) {
        print("connect")
    }
    func headphoneMotionManagerDidDisconnect(_ manager: CMHeadphoneMotionManager) {
        print("disconnect")
    }
}


