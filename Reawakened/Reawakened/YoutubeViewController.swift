//
//  YoutubeViewController.swift
//  Reawakened
//
//  Created by mikewang on 2019/8/6.
//  Copyright © 2019 chiron wang. All rights reserved.
//

import UIKit
import WebKit
import Alamofire


class YoutubeViewController: UIViewController {
    
    @IBOutlet weak var youtubeWebView: WKWebView!
    
    var activityIndicator:UIActivityIndicatorView!
    // book1Amazon, book1Kobo, book1ReadMoo
    var contentID = ""
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configurationUI()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Other Method
    
    private func configurationUI() {
        setActivityIndicator()
        loadYoutube()
    }
    
    func setActivityIndicator() {
        activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
        activityIndicator.color = UIColor.gray
        activityIndicator.center = self.view.center
        view.addSubview(activityIndicator)
        
        activityIndicator.startAnimating()
    }
    
    func loadYoutube() {
        Alamofire.request(getVideoURL()).responseData {
            (response) in
            self.activityIndicator.stopAnimating()
            self.youtubeWebView.load(response.data!, mimeType: "text/html", characterEncodingName: "utf-8", baseURL: URL(string: self.getVideoURL())!)
        }
    }
    
    func getVideoURL() -> String {
        var result = ""
        switch contentID {
        case "book1":
            result = "https://www.youtube.com/watch?v=JPE_4973INg"
        case "book2":
            result = "https://www.youtube.com/watch?v=ZyoyGeZOQTA"
        case "book3":
            result = "https://www.youtube.com/watch?v=CpNBC6yKsbk"
        default:
            result = "https://www.youtube.com/watch?v=JPE_4973INg"
        }
        return result
    }

}
