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

class ViewController: UIViewController, CMHeadphoneMotionManagerDelegate {
    @IBAction func enablePitch(_ sender: Any) {
        pitchEnabled = !pitchEnabled
        if(!pitchEnabled){
            degreesPitch = 0
        }
    }
    @IBAction func enableRoll(_ sender: Any) {
        rollEnabled = !rollEnabled
        if(!rollEnabled){
            degreesRoll = 0
        }
    }
    @IBAction func enableYaw(_ sender: Any) {
        yawEnabled = !yawEnabled
        if(!yawEnabled){
            degreesYaw = 0
        }
    }
    
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

class ContactCell: UITableViewCell {
    @IBOutlet weak var pitchValue: UILabel!
    @IBOutlet weak var rollValue: UILabel!
    @IBOutlet weak var yawValue: UILabel!
}

