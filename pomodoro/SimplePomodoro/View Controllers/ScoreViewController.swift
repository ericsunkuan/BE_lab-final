//
//  ScoreViewController.swift
//  SimplePomodoro
//
//  Created by Austin Chen on 2024/5/26.
//  Copyright © 2024 Max Q Software LLC. All rights reserved.
//

import UIKit
import Kingfisher
import WebKit


class ScoreViewController: UIViewController {
    
    @IBOutlet weak var imgscore: UIImageView!
    
    @IBOutlet weak var webkit: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://lh3.googleusercontent.com/proxy/yNOOgIHtJKyJS471ywQkA1psFrDfRjSltDLV_4XxiuUr_47rA-IpayKIb8j_8Ezd-0ooiQQoiRuRXi3teB3yethUoyGBn7QiuJEu1ssQ81e2FaanaxAmLlpqItkM3lJ0M38re0sN8LU")
        
        imgscore.kf.setImage(with: url)
        imgscore.isUserInteractionEnabled = true

        
        guard let webView = webkit else {
                    return
            }
        
        webView.scrollView.isScrollEnabled = false

        if let url_web = URL(string: "https://docs.google.com/document/d/1Gt6Ln_5C4ioFRDPMVIC1Sx1vcYbvnskIqkxDG-r35Kc/edit?usp=sharing") {
            let request = URLRequest(url: url_web)
                    webView.load(request)
            }
    }
}
