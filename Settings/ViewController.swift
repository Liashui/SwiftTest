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
        self.title = "设置"
        self.table.separatorStyle = UITableViewCellSeparatorStyle.none
        self.table.delegate = self;
        self.table.dataSource = self;
        self.table.register(ItemTableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
        self.data = [["账号与安全"],["公告信息","一件反馈","为我评分"],["分享账号设置","清除缓存"],["关于","客服电话"]]
        
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
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.data!.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let array:NSArray? = self.data?.object(at: section) as! NSArray?
        return (array?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ItemTableViewCell! = self.table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ItemTableViewCell
        let array:NSArray? = self.data?.object(at: indexPath.section) as! NSArray?
        cell.label?.text=array?.object(at: indexPath.row) as! String?
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

