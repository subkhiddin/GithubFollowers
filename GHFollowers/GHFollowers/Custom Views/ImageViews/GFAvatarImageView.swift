//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Nuriddinov Subkhiddin on 09/10/22.
//

import UIKit
import SDWebImage

class GFAvatarImageView: UIImageView {
    
//    let cache = NetworkManager.shared.cache
    let placeholderImage = UIImage(named: "avatar-placeholder")

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
         
    }
    func downloadImage(from urlString:String) {
        guard let url = URL(string: urlString) else { return }
         sd_setImage(with: url)
//        let cacheKey = NSString(string: urlString)
//
//        if let image = cache.object(forKey: cacheKey ){
//            self.image = image
//            return
//        }
//
        
//        guard let url = URL(string:  urlString) else {return}
//
//        let task = URLSession.shared.dataTask(with:  url) { [weak self]  data, responce, error in
//            guard let self = self else{ return }
//            if error != nil {return}
//            guard let responce = responce as? HTTPURLResponse, responce.statusCode == 200  else {return}
//            guard let data = data else {return}
//
//            guard let image = UIImage(data: data) else {return}
////            self.cache.setObject(image, forKey: cacheKey )
//
//            DispatchQueue.main.async {
//                self.image = image
//            }
//
//
//        }
//        task.resume()
    }
}
