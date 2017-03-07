//
//  NoticeUIViewController.swift
//  Settings
//
//  Created by jackli on 2017/3/7.
//  Copyright © 2017年 jackli. All rights reserved.
//

import UIKit

class NoticeUIViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = NSLocalizedString("notice", comment: "default")
        let webview:UIWebView! = UIWebView()
        let request = URLRequest.init(url: URL.init(string: "https://www.baidu.com")!)
        webview.loadRequest(request)
        self.view.addSubview(webview)
        webview.snp.makeConstraints { (make) -> Void in
            make.edges.equalToSuperview()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
