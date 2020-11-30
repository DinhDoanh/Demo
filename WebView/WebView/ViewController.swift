//
//  ViewController.swift
//  WebView
//
//  Created by Đình Doanh on 10/8/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit
import WebKit //Import WebKit nếu không Xcode sẽ báo lỗi

class ViewController: UIViewController, WKNavigationDelegate{
    
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myWebView.navigationDelegate = self
        
        //Tạo và set URL cho myWebView
        let url = URL(string: "https://www.google.com/")
        let request = URLRequest(url: url!)
        
        //Load lên myWebView
        myWebView.load(request)
        
        checkButton()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        checkButton()
    }
    
    //Action nút Back
    @IBAction func backButton_clicked(_ sender: Any) {
        myWebView.goBack()
        checkButton()
    }
    
    //Action nút Next
    @IBAction func nextButton_clicked(_ sender: Any) {
        myWebView.goForward()
        checkButton()
    }
    
    //Ẩn hiện hai nút điều khiển trình duyệt
    func checkButton() {
        if myWebView.canGoBack {
            backButton.isEnabled = true
        } else {
            backButton.isEnabled = false
        }
        
        if myWebView.canGoForward {
            nextButton.isEnabled = true
        } else {
            nextButton.isEnabled = false
        }
    }
}
