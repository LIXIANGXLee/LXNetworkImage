//
//  KingFisher+Extension.swift
//  LXNetworkImage
//
//  Created by Mac on 2020/6/29.
//  Copyright © 2020 李响. All rights reserved.
//

import UIKit
import Kingfisher

/// 扩展回调声明
public typealias LXKingfisherCallBack = ((_ image: UIImage?, _ error: String?) -> ())
public typealias LXKingfisherProgressCallBack = ((_ progress: CGFloat) -> ())

// MARK: - UIImageView
public extension KingfisherWrapper where Base: KFCrossPlatformImageView {
    
    /// 设置 UIImageView 的 networkImage
    @discardableResult
    func setImage(urlString: String?,
                  placeholder: Placeholder? = nil)
        -> DownloadTask? {
            let url = URL(string: urlString ?? "")
            
            return setImage(with: url, placeholder: placeholder, options: [.transition(.fade(0.5))])
    }
    
    /// 下载 UIImageView 的 networkImage
    @discardableResult
    func setImage(urlString: String?,
                  placeholder: Placeholder? = nil,
                  progress: LXKingfisherProgressCallBack? = nil,
                  callBack:LXKingfisherCallBack? = nil)
        -> DownloadTask? {
            let url = URL(string: urlString ?? "")
            return setImage(with: url, placeholder: placeholder, progressBlock: { (current, total) in
                if total > 0  {
                    progress?(CGFloat(current) / CGFloat(total))
                }
            }) {  (result) in
                switch result {
                case let .success(imageResult):
                    callBack?(imageResult.image,nil)
                case let .failure(errorResult):
                    callBack?(nil,                    errorResult.errorDescription)
                }
            }
    }
}

// MARK: - UIButton
public extension KingfisherWrapper where Base: UIButton {
    
    /// 设置 UIButton 的 networkImage
    @discardableResult
    func setImage(urlString: String?,
                  for state: UIControl.State = .normal,
                  placeholder: UIImage? = nil)
        -> DownloadTask? {
            
            let url = URL(string: urlString ?? "")
            return setImage(with: url,
                            for: state,
                            placeholder: placeholder,
                            options: [.transition(.fade(0.5))])
    }
}
