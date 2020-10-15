//
//  UIImageView+Extension.swift
//  LXNetworkImage
//
//  Created by Mac on 2020/6/29.
//

import UIKit
import Kingfisher
// MARK: - UIImageView
public extension UIImageView {
    
    /// 设置 UIImageView 的 networkImage
    func setImage(urlString: String?,
                  placeholder: UIImage? = nil){
        kf.setImage(urlString: urlString, placeholder: placeholder)
    }
    
    /// 下载 UIImageView 的 networkImage
    func setImage(urlString: String?,
                  placeholder: UIImage? = nil,
                  progress: LXKingfisherProgressCallBack? = nil,
                  callBack:LXKingfisherCallBack? = nil){
        kf.setImage(urlString: urlString, placeholder: placeholder, progress: progress, callBack: callBack)
    }
}
