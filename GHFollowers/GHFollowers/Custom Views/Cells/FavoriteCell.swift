//
//  FavoriteCell.swift
//  GHFollowers
//
//  Created by Nuriddinov Subkhiddin on 13/11/22.
//

import UIKit

class FavoriteCell: UITableViewCell {

    static let  ReuseID = "FavoriteCell"
    
    let avatarImagaView = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 18)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(favorite : Follower) {
        usernameLabel.text = favorite.login
        avatarImagaView.downloadImage(from: favorite.avatarUrl)
    }
    
    private func configure() {
         addSubview(avatarImagaView)
         addSubview(usernameLabel)
        
        accessoryType = .disclosureIndicator
        let padding:CGFloat = 12
        
        NSLayoutConstraint.activate([
            avatarImagaView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            avatarImagaView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            avatarImagaView.heightAnchor.constraint(equalToConstant: 60),
            avatarImagaView.widthAnchor.constraint(equalToConstant: 60),
            
            usernameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            usernameLabel.leadingAnchor.constraint(equalTo: avatarImagaView.trailingAnchor, constant: 24),
            usernameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 40 )
        ])
        
    }
}
