//
//  FollowerCell.swift
//  GHFollowers
//
//  Created by Nuriddinov Subkhiddin on 05/10/22.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    static let  ReuseID = "FollowerCell"
    
    let avatarImagaView = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 18)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower : Follower) {
        usernameLabel.text = follower.login
        avatarImagaView.downloadImage(from: follower.avatarUrl)
    }
    
    private func configure() {
        addSubview(avatarImagaView)
        addSubview(usernameLabel)
        
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            avatarImagaView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            avatarImagaView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            avatarImagaView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            avatarImagaView.heightAnchor.constraint(equalToConstant: 100),
            avatarImagaView.widthAnchor.constraint(equalToConstant: 100),
            avatarImagaView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            avatarImagaView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
            
            usernameLabel.topAnchor.constraint(equalTo: avatarImagaView.bottomAnchor, constant: 12),
            usernameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            usernameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant:  -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
            
        ])
    }
}
