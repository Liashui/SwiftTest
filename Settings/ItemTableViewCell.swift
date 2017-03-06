//
//  ItemTableViewCell.swift
//  Settings
//
//  Created by jackli on 2017/3/6.
//  Copyright © 2017年 jackli. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    var line:UIView!
    var label:UILabel!
    
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
        
        self.line = UIView()
        line.backgroundColor=UIColor.lightGray
        self.contentView.addSubview(line)
        line.snp.makeConstraints { (make) -> Void in
            make.bottom.equalTo(self.contentView.snp.bottom)
            make.left.equalTo(self.contentView)
            make.right.equalTo(self.contentView)
            make.height.equalTo(0.5)
        }
        
        self.label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        self.contentView.addSubview(self.label)
        self.label.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.contentView.snp.top)
            make.left.equalTo(self.contentView.snp.left).offset(10)
            make.bottom.equalTo(self.contentView.snp.bottom)
        }
    }
    
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)!
    }
}
