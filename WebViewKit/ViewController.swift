//
//  ViewController.swift
//  WebViewKit
//
//  Created by IMCS2 on 7/29/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var weatherword: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func buttonPressed(_ sender: Any) {
        let newtextField = textField.text
        let newString = newtextField!.replacingOccurrences(of: " ", with: "_")
        let weather = "https://www.weather-forecast.com/locations/" + newString + "/forecasts/latest"
        let startWord = "p class=\"b-forecast__table-description-content\">"
        let url = URL(string: weather)
        do {
            let contents = try String(contentsOf: url!)
            var newcontents=contents.components(separatedBy: "<")
            var newIndex = newcontents.firstIndex(of: startWord)
            var newword = newcontents[newIndex!+1]
            var newcall = newword.components(separatedBy: ">")
            weatherword.text = newcall[1]
        } catch {
            weatherword.text = "Enter a valid place"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

