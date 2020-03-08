//
//  ViewController.swift
//  KeyboardHandling
//
//  Created by Nabil Kazi on 28/01/20.
//  Copyright © 2020 CDP India Pvt. Ltd. All rights reserved.
//

import UIKit

class Solution1VC: UIViewController {

    @IBOutlet weak var emailTF: UnderlinedTextField!
    @IBOutlet weak var passwordTF: UnderlinedTextField!
    
    static func storyboardInstance() -> Solution1VC? {
        let storyboard = UIStoryboard(name: Storyboard.main ,bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "Solution1VC") as? Solution1VC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //We make a call to our keyboard handling function as soon as the view is loaded.
        initializeHideKeyboard()
    }

}

extension Solution1VC {
    
    func initializeHideKeyboard(){
        //Declare a Tap Gesture Recognizer which will trigger our dismissMyKeyboard() function
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(dismissMyKeyboard))
        
        //Add this tap gesture recognizer to the parent view
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissMyKeyboard(){
        //endEditing causes the view (or one of its embedded text fields) to resign the first responder status.
        //In short- Dismiss the active keyboard.
        view.endEditing(true)
    }
    
}
