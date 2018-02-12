//
//  ViewController.swift
//  Basic Interaction
//
//  Created by Aaron Dougher on 1/30/18.
//  Copyright © 2018 Aaron Dougher. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    
    
    @IBAction func buttonAction(_ sender: UIButton)
    {
        let title = sender.title(for: .selected)!
        let text = "\(title) button was pressed."
        
        labelText.text = text
        
        let styledText = NSMutableAttributedString(string: text)
        let attributes = [
            NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: labelText.font.pointSize)
        ]

        let nameRange = (text as NSString).range(of: title)
     styledText.setAttributes(attributes, range: nameRange)
        
        
    }
    

}

