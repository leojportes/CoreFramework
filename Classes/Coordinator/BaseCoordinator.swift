//
//  BaseCoordinator.swift
//  CoreFramework
//
//  Created by Leonardo Portes on 25/01/22.
//

import Foundation

open class BaseCoordinator: Coordinator {
    
    public var parentCoordinator: BaseCoordinator?
    public var childCoordinators: [Coordinator] = []
    public var configuration: CoordinatorConfiguration
    
    public let id = UUID().uuidString
    
    public required init(with configuration: CoordinatorConfiguration,
                         parentCoordinator: BaseCoordinator? = nil) {
        self.configuration = configuration
        self.parentCoordinator = parentCoordinator
        self.parentCoordinator?.insertChild(childCoordinator: self)
    }
    
    open func start() {
        assertionFailure("Start function must be implemented in all children")
    }
    
    public func insertChild(childCoordinator: BaseCoordinator) {
        childCoordinators.append(childCoordinator)
    }
    
}

extension BaseCoordinator: CoordinatorProtocol {
    public func removeCoordinator() {
        parentCoordinator?.childCoordinators.removeAll { $0.id == self.id }
    }
}

