//
//  AccountSafeViewController.swift
//  Settings
//
//  Created by jackli on 2017/3/7.
//  Copyright © 2017年 jackli. All rights reserved.
//

import UIKit

class AccountSafeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var table:UITableView!;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = NSLocalizedString("accountSafe", comment: "default")
        self.table = UITableView()
        self.table.delegate = self
        self.table.dataSource = self
        self.view.addSubview(self.table)
        self.table.snp.makeConstraints { (make) -> Void in
            make.edges.equalToSuperview()
        }
        self.table.register(AccountSafeTableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK:- UITableView delegate & datasource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: AccountSafeTableViewCell! = self.table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AccountSafeTableViewCell
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        cell.value.text = ""
        if indexPath.row  == 0 {
            cell.desc.text = NSLocalizedString("setPayPwd", comment: "default")
            
        }
        if indexPath.row  == 1 {
            cell.desc.text = NSLocalizedString("changeLoginPwd", comment: "default")
        }
        if indexPath.row  == 2 {
            cell.desc.text = NSLocalizedString("bindPhone", comment: "default")
            cell.value.text = "18510242072"
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
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
