//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Amir Fahmideh on 2/19/18.
//

import UIKit

class RatingControl: UIStackView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    //Mark Private Methods

    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
    private func setupButtons() {
        let btn = UIButton();
        btn.backgroundColor = UIColor.red
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        btn.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        btn.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        addArrangedSubview(btn)
    }
}
