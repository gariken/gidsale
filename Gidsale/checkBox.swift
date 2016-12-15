//
//  checkBox.swift
//  Gidsale
//
//  Created by Александр on 14.12.16.
//  Copyright © 2016 Александр. All rights reserved.
//

import UIKit

class checkBox: UIButton {
        
        let checkImage = UIImage(named: "checkbox")! as UIImage
        let unCheckImage = UIImage(named: "checkbox_empty")! as UIImage
        
        var isCheked:Bool = false{
            didSet{
                if isCheked == true{
                    self.setImage(checkImage, for: .normal)
                    self.tintColor = UIColor.black
                } else{
                    self.setImage(unCheckImage, for: .normal)
                    self.tintColor = UIColor.red
                }
            }
        }
        
        
        override func awakeFromNib() {
            self.addTarget(self, action: #selector(buttonClicked(sender:)), for: UIControlEvents.touchUpInside)
        }
        
        
        func buttonClicked(sender: UIButton){
            if(sender == self){
                if (isCheked == true){
                    isCheked = false
                } else {
                    isCheked = true
                }
            }
        }
        
        
    }

