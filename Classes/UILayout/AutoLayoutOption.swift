//
//  AutoLayoutOption.swift
//  CoreFramework
//
//  Created by Leonardo Portes on 13/11/21.
//

import UIKit

public enum AutoLayoutOption {
    case none
    case useSafeArea
    case useMargins
}

extension AutoLayoutOption {
    var useSafeArea: Bool {
        if case .useSafeArea = self {
            return true
        }
        
        return false
    }
    
    var useMargins: Bool {
        if case .useMargins = self {
            return true
        }
        
        return false
    }
}
