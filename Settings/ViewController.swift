//
//  ViewController.swift
//  Settings
//
//  Created by jackli on 2017/3/6.
//  Copyright © 2017年 jackli. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    var data:NSArray?
    
    //MARK:- lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.automaticallyAdjustsScrollViewInsets = false
        self.title = "learn"
        self.table.separatorStyle = UITableViewCellSeparatorStyle.none
        self.table.delegate = self;
        self.table.dataSource = self;
        self.table.register(ItemTableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
        self.data = ["tableView","webview","category","inherit","network","jsonParse"]
        
        let line:UIView! = UIView()
        line.backgroundColor=UIColor.lightGray
        self.view.addSubview(line)
        line.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.table.snp.top)
            make.left.equalTo(self.view)
            make.right.equalTo(self.view)
            make.height.equalTo(1)
        }
    }
    
    //MARK:- UITableView delegate & datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ItemTableViewCell! = self.table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ItemTableViewCell
        cell.label?.text=self.data?.object(at: indexPath.row) as! String?
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let vc:UIViewController! = AccountSafeViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if indexPath.row == 1 {
            let vc:UIViewController! = NoticeUIViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

