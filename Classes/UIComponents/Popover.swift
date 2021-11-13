//
//  Popover.swift
//  CoreFramework
//
//  Created by Leonardo Portes on 13/11/21.
//

import UIKit

public protocol AdaptativePresentable: UIViewController, UIPopoverPresentationControllerDelegate {
    func adaptivePresentation(for controller: UIPresentationController) -> UIModalPresentationStyle
}

public protocol Popover: UIViewController {
    var preferredContentSize: CGSize { get set }
    func showPopover(presentingViewController: AdaptativePresentable, sourceView: UIView)
}

extension Popover {
    
    private func configurePresentation(forController controller: UIViewController,
                                       delegate: UIPopoverPresentationControllerDelegate) -> UIPopoverPresentationController {
        controller.modalPresentationStyle = .popover
        
        let presentationController = controller.presentationController as! UIPopoverPresentationController
        presentationController.delegate = delegate
        return presentationController
    }
    
    public func showPopover(presentingViewController: AdaptativePresentable, sourceView: UIView) {
        let presentationController = configurePresentation(forController: self, delegate: presentingViewController)
        presentationController.sourceView = sourceView
        presentationController.sourceRect = sourceView.bounds
        presentationController.delegate = presentingViewController
        presentationController.permittedArrowDirections = [.down, .up]
        presentingViewController.present(self, animated: true)
    }
    
}
