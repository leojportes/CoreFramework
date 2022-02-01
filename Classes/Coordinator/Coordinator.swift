//
//  Coordinator.swift
//  CoreFramework
//
//  Created by Leonardo Portes on 25/01/22.
//

import UIKit

public protocol CoordinatorProtocol: AnyObject {
    func removeCoordinator()
}

public protocol Coordinator {
    
    var parentCoordinator: BaseCoordinator? { get set }
    var childCoordinators: [Coordinator] { get set }
    var configuration: CoordinatorConfiguration { get set }
    
    var id: String { get }
    
    init(with configuration: CoordinatorConfiguration,
         parentCoordinator: BaseCoordinator?)
    
    func start()
}
