//
//  Solution4VC.swift
//  KeyboardHandling
//
//  Created by Nabil Kazi on 08/02/20.
//  Copyright © 2020 CDP India Pvt. Ltd. All rights reserved.
//

import UIKit

class Solution4VC: UIViewController {

    @IBOutlet weak var pinTF: UnderlinedTextField!
    
    static func storyboardInstance() -> Solution4VC? {
        let storyboard = UIStoryboard(name: Storyboard.main ,bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "Solution4VC") as? Solution4VC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupToolbar()
    }
    
    func setupToolbar(){
        //Create a toolbar
        let bar = UIToolbar()
        
        //Create a done button with an action to trigger our function to dismiss the keyboard
        let doneBtn = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(dismissMyKeyboard))
        
        //Create a felxible space item so that we can add it around in toolbar to position our done button
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        //Add the created button items in the toobar
        bar.items = [flexSpace, flexSpace, doneBtn]
        bar.sizeToFit()
        
        //Add the toolbar to our textfield
        pinTF.inputAccessoryView = bar
    }
    
    @objc func dismissMyKeyboard(){
        view.endEditing(true)
    }

}
