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
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textField: UITextField!
    
    
    
    
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        let newtextField = textField.text!
        let newstr = newtextField.replacingOccurrences(of: " ", with: "-")
        var weather = "https://www.weather-forecast.com/locations/" + newstr + "/forecasts/latest"
        let url = URL(string: weather)
        
        print(url)
        
    }
    
    //@IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

