//
//  OnboardingPagesViewController.swift
//  CarbonApp
//
//  Created by Decagon on 4/11/22.
//

import UIKit
import Lottie

class OnboardingPagesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    //MARK: - Create collectionView Cell
    
    
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        cv.backgroundColor = .white
        cv.dataSource = self
        cv.delegate = self
        cv.isPagingEnabled = true
        return cv
    }()
    
    @objc public func moveToNext() {
        let afolabi = SignupViewController()
        afolabi.modalPresentationStyle = .fullScreen
        present(afolabi, animated: true)
    }
    
    let cellId = "cellId"
    
    var pages: [Page] = {
        let firstPage = Page(title: "Go beyond banking", message: "Welcome to the future. Carbon is your \n passport to world-class financial \n services, built just for you.", imageName: "Carbon", skipButton: "Skip", animation: "mobile bank")
        
        let secondPage = Page(title: "Stay on top of your finances. Anytime. Anywhere", message: "Carbon makes financial services faster, \n cheaper and more convenient. You can \n access the app 24/7, wherever you are.", imageName: "Carbon", skipButton: "Sign in", animation: "mobile-banking")
        
        let thirdPage = Page(title: "Trusted by millions", message: "With Carbon's market-leading service \n already used by millions of people just \n like you, you're in very good company.", imageName: "Carbon", skipButton: "Sign in", animation: "banking-debit-card")
        
        return [firstPage, secondPage, thirdPage]
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        
        view.addSubview(collectionView)
        
        
        collectionView.anchorWithConstantsToTop(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
        
        
        //MARK: - Register a collectionView cell
        
        collectionView.register(PageCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PageCell
        
        let page = pages[indexPath.item]
        cell.page = page
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    
}

