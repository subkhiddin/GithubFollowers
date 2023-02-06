//
//  UIHelper .swift
//  GHFollowers
//
//  Created by Nuriddinov Subkhiddin on 30/10/22.
//

import Foundation
import UIKit

struct UIHelper {
    
    static func createThreeColumnFlowLayout(in view:UIView) -> UICollectionViewFlowLayout { 
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpacing: CGFloat = 10
        let availableWidth = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        
        let flayLayout = UICollectionViewFlowLayout()
        flayLayout.sectionInset = UIEdgeInsets(top:  padding, left: padding, bottom: padding, right: padding)
        flayLayout.itemSize = CGSize(width: itemWidth, height: itemWidth +   40)
        
        
        
        return flayLayout
    }
}
