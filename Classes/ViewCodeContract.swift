//
//  ViewCodeContract.swift
//  CoreFramework
//
//  Created by Leonardo Portes on 13/11/21.
//

import Foundation
import UIKit

///Protocolo destinado a criação de views por código.
public protocol ViewCodeContract {
    /// Hierarquia de views
    func setupHierarchy()
    
    /// Ativação de constraints
    func setupConstraints()
    
    /// Componentes
    func setupConfiguration()
    
}

public extension ViewCodeContract {
    
    func setupView() {
        setupHierarchy()
        setupConstraints()
        setupConfiguration()
    }
    
    func setupConfiguration() {
        /* Default implementation */
    }
}
