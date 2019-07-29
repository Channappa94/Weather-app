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

    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var url = URL(string: "https://www.weather-forecast.com/locations/New-York/forecasts/latest")
        let urlrequest = URLRequest(url: url!)
        
//        webview.load(urlrequest)
//        print(webview!)
        
    }


}

