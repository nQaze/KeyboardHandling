//
//  Solution2VC.swift
//  KeyboardHandling
//
//  Created by Nabil Kazi on 08/02/20.
//  Copyright © 2020 CDP India Pvt. Ltd. All rights reserved.
//

import UIKit

class Solution2VC: UIViewController {

    @IBOutlet weak var emailTF: UnderlinedTextField!
    @IBOutlet weak var passwordTF: UnderlinedTextField!
    
    static func storyboardInstance() -> Solution2VC? {
        let storyboard = UIStoryboard(name: Storyboard.main ,bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "Solution2VC") as? Solution2VC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTF.delegate = self
        passwordTF.delegate = self
        
        emailTF.tag = 1
        passwordTF.tag = 2
    }

}

extension Solution2VC: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Check if there is any other text-field in the view whose tag is +1 greater than the current text-field on which the return key was pressed. If yes → then move the cursor to that next text-field. If No → Dismiss the keyboard
        if let nextField = self.view.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return false
    }
}
