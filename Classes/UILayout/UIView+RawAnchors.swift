//
//  UIView+RawAnchors.swift
//  CoreFramework
//
//  Created by Leonardo Portes on 13/11/21.
//

import UIKit

public extension UIView {
    
    var viewLeftAnchor: NSLayoutXAxisAnchor {
        return self.leftAnchor
    }
    
    var viewRightAnchor: NSLayoutXAxisAnchor {
        return self.rightAnchor
    }
    
    var viewTopAnchor: NSLayoutYAxisAnchor {
        return self.topAnchor
    }
    
    var viewBottomAnchor: NSLayoutYAxisAnchor {
        return self.bottomAnchor
    }
    
    var viewCenterXAnchor: NSLayoutXAxisAnchor {
        return self.centerXAnchor
    }
    
    var viewCenterYAnchor: NSLayoutYAxisAnchor {
        return self.centerYAnchor
    }
    
    var viewWidthAnchor: NSLayoutDimension {
        return self.widthAnchor
    }
    
    var viewHeightAnchor: NSLayoutDimension {
        return self.heightAnchor
    }
    
    var viewFrameHeight: CGFloat {
        return frame.height
    }
    
}
