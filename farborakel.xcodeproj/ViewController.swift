//
//  ViewController.swift
//  farborakel.xcodeproj
//
//  Created by Fabian Bohn on 18.10.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var changeCircleBtn: UIButton!
    @IBOutlet weak var changBtnBg: UIButton!
    @IBOutlet weak var circle: UIView!
    
    
    @IBAction func changeBG(_ sender: Any) {
        view.backgroundColor = randomcolor()
    }
    
    @IBAction func changeCircle(_ sender: Any) {
        circle.backgroundColor = randomcolor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

@IBDesignable extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set {
              layer.cornerRadius = newValue

              layer.masksToBounds = (newValue > 0)
        }
    }
}

func randomcolor() -> UIColor{
let red: CGFloat = CGFloat(drand48())
    let green: CGFloat = CGFloat(drand48())
    let blue: CGFloat = CGFloat(drand48())
    return UIColor(red:red, green:green, blue:blue, alpha: 1.0)
}
