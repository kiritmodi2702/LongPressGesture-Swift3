//
//  ViewController.swift
//  GestureDemo-Swift3
//  Copyright © 2017 iOSDevCenters. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UIGestureRecognizerDelegate , UITextFieldDelegate{
    
    var longGesture = UILongPressGestureRecognizer()

    @IBOutlet weak var viewLong: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // LongPress Gesture
        longGesture = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longPress(_:)))
        longGesture.minimumPressDuration = 1
        viewLong.addGestureRecognizer(longGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func longPress(_ sender: UILongPressGestureRecognizer) {
        let alertC = UIAlertController(title: "Long Press", message: "Long press gesture called when you press on view of 1 second duration.", preferredStyle: UIAlertControllerStyle.alert)
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (alert) in
        }
        alertC.addAction(ok)
        self.present(alertC, animated: true, completion: nil)
    }


}

