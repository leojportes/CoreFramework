//
//  CoachMarkViewController.swift
//  CoreFramework
//
//  Created by Leonardo Portes on 13/11/21.
//

import UIKit

class CoachMarkViewController: UIViewController, ViewCodeContract, Popover {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.backgroundColor = .clear
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - Init
    
    init(text: String) {
        super.init(nibName: nil, bundle: nil)
        setupView()
        setupTitleLabel(text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Viewcode
    
    func setupHierarchy() {
        view.addSubview(titleLabel)
        view.backgroundColor = .lightGray
    }
    
    func setupConstraints() {
        titleLabel
            .center(in: view)
    }
    
    //MARK: - Private methods
    
    private func setupTitleLabel(_ text: String) {
        titleLabel.text = text
    }
    
}
