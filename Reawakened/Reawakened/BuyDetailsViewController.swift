//
//  BuyViewController.swift
//  Reawakened
//
//  Created by mikewang on 2019/8/4.
//  Copyright © 2019 chiron wang. All rights reserved.
//

import UIKit
import Alamofire
import WebKit

class BuyDetailsViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var bookUIImage: UIImageView!
    @IBOutlet weak var storeWKWebView: WKWebView!
    @IBOutlet weak var loadingActivityIndecatorView: UIActivityIndicatorView!
    
    public var storeName = "book1Amazon"
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storeWKWebView.navigationDelegate = self
        configurationUI()
    }
    
    // MARK: - WKNavigationDelegate
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        hiddenUIImage()
        loadingActivityIndecatorView.stopAnimating()
        loadingActivityIndecatorView.isHidden = true
    }
    
    // MARK: - Other Method
    
    
    private func hiddenUIImage() {
        bookUIImage.isHidden = true
    }
    
    private func configurationUI() {
        let storeURL = URL(string: getURL(storeName))
        let storeRequest = URLRequest(url: storeURL!)
        loadingActivityIndecatorView.startAnimating()
        storeWKWebView.load(storeRequest)
    }
    
    func getURL(_ contentID: String) -> String {
        var result = ""
        switch contentID {
        case "book1Amazon":
            result = "https://www.amazon.com/Reawakened-Colleen-Houck/dp/0385376596/ref=tmm_pap_swatch_0?_encoding=UTF8&qid=&sr="
        case "book1Kobo":
            result = "https://www.kobo.com/tw/zh/ebook/reawakened-4"
        case "book1ReadMoo":
            result = "https://readmoo.com/book/210092650000101"
            
        case "book2Amazon":
            result = "https://www.amazon.com/gp/product/B017QLRMXS/ref=dbs_a_def_rwt_hsch_vapi_tkin_p1_i6"
        case "book2Kobo":
            result = "https://www.kobo.com/tw/zh/ebook/recreated-1"
        case "book2ReadMoo":
            result = "https://readmoo.com/book/210092653000101"
        
        case "book3Amazon":
            result = "https://www.amazon.com/gp/product/B01N04FB63/ref=dbs_a_def_rwt_hsch_vapi_tkin_p1_i8"
        case "book3Kobo":
            result = "https://www.kobo.com/tw/zh/ebook/reunited-37"
        case "book3ReadMoo":
            result = "https://readmoo.com/book/210092654000101"
            
        case "book4Amazon":
            result = "https://www.amazon.com/gp/product/B01MQMKQD5/ref=dbs_a_def_rwt_hsch_vapi_tkin_p1_i10"
        case "book4Kobo":
            result = "https://www.kobo.com/tw/zh/ebook/reignited-6"
        case "book4ReadMoo":
            result = "https://readmoo.com/book/210093174000101"
            
        default:
            result = "https://readmoo.com/book/210092650000101"
        }
        return result
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
