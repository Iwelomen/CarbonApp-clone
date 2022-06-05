//
//  PageCell.swift
//  CarbonApp
//
//  Created by Decagon on 4/11/22.
//

import UIKit
import Lottie

class PageCell: UICollectionViewCell {
   
    
    var page: Page? {
        didSet {
            guard let page = page else {
                return
            }
            imageView.image = UIImage(named: page.imageName)
            skipButton.setTitle(page.skipButton, for: .normal)
            
            let color = UIColor(white: 0.2, alpha: 1)
            
            
            
            animation.animation = Animation.named(page.animation)
            animation.loopMode = .loop
            animation.play()
            skipButton.setTitle(page.skipButton, for: .normal)

            
            
            //MARK: - Make string show
            
            let attributedTest = NSMutableAttributedString(string: page.title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.bold), NSAttributedString.Key.foregroundColor: color])
            
            attributedTest.append(NSAttributedString(string: "\n\n\(page.message)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), NSAttributedString.Key.foregroundColor: color]))
            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .center
            
            let length = attributedTest.string.count
            attributedTest.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: length))
            textView.attributedText = attributedTest
            
        }
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        setupViews()
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .white
        iv.image = UIImage(named: "Carbon")
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
        
    }()
    
    let textView: UITextView = {
        let textView = UITextView()
        textView.text = "SAMPLE TEXT FOR NOW"
        textView.isEditable = false
//        textView.contentInset = UIEdgeInsets(top: 24, left: 0, bottom: 0, right: 0)
        return textView
    }()
    
    let setupNewAccountButton: UIButton = {
        let button = UIButton()
        button.setTitle("Set up new account", for: .normal)
        button.setTitleColor(UIColor(white: 1, alpha: 1), for: .normal)
        button.backgroundColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
        button.layer.cornerRadius = 10
        
        return button
    }()
    
    lazy var skipButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Skip", for: .normal)
        
        button.setTitleColor(UIColor.blue, for: .normal)
        button.titleLabel?.textAlignment = .right
//        button.addTarget(self, action: #selector(moveToNext()), for: .touchUpInside)
        return button
    }()
    
    let lineSeperatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.9, alpha: 1)
        return view
    }()
    
    let animation: AnimationView = {
        let animate = AnimationView()
        animate.contentMode = .scaleAspectFit
        animate.loopMode = .loop
        animate.play()
        animate.clipsToBounds = true
        return animate
    }()
    
    
    
    func setupViews() {
        backgroundColor = .white
        
        addSubview(imageView)
        addSubview(textView)
        addSubview(setupNewAccountButton)
        addSubview(skipButton)
        addSubview(lineSeperatorView)
        addSubview(animation)
        
        _ = imageView.anchor(lineSeperatorView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 10, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 50)
        
        textView.anchorToTop(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor )
        textView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true
        
        _ = setupNewAccountButton.anchor(nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 32, bottomConstant: 70, rightConstant: 32, heightConstant: 50)
        
        _ = skipButton.anchor(topAnchor, left: nil, bottom: nil, right: rightAnchor, topConstant: 16, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 100, heightConstant: 50)
        
        lineSeperatorView.anchorWithConstantsToTop(top: skipButton.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor)
        lineSeperatorView.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        _ = animation.anchor(imageView.bottomAnchor, left: leftAnchor, bottom: textView.topAnchor, right: rightAnchor)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
