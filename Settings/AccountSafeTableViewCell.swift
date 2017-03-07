//
//  AccountSafeTableViewCell.swift
//  Settings
//
//  Created by jackli on 2017/3/7.
//  Copyright © 2017年 jackli. All rights reserved.
//

import UIKit

class AccountSafeTableViewCell: UITableViewCell {
    
    var desc:UILabel!
    var value:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.desc = UILabel()
        self.desc.font = UIFont.systemFont(ofSize: 14)
        self.contentView.addSubview(self.desc)
        self.desc.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(self.contentView).offset(10)
            make.top.equalTo(self.contentView)
            make.bottom.equalTo(self.contentView)
        }
        
        self.value = UILabel()
        self.value.font = UIFont.systemFont(ofSize: 14)
        self.contentView.addSubview(self.value)
        self.value.snp.makeConstraints { (make) -> Void in
            make.right.equalTo(self.contentView)
            make.top.equalTo(self.contentView)
            make.bottom.equalTo(self.contentView)
        }

    }
    
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)!
    }
}
