//
//  UIButton+Extension.swift
//  LXNetworkImage
//
//  Created by Mac on 2020/6/29.
//

import UIKit
import Kingfisher


// MARK: - UIButton
public extension UIButton {
    
    /// 设置 UIButton 的 networkImage
    func setImage(urlString: String?,
                  for state: UIControl.State = .normal,
                  placeholder: UIImage? = nil){
        
        kf.setImage(urlString: urlString, for: state, placeholder: placeholder)
    }
}
