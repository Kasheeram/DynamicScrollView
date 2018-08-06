//
//  VCExtension.swift
//  DynamicScrollView
//
//  Created by kashee on 26/07/18.
//  Copyright © 2018 kashee. All rights reserved.
//

import Foundation

extension ViewController {
    
    func setAutolayoutConstraints(){
        
        view.addSubview(topView)
        topView.addSubview(backButton)
        view.addSubview(scrollView)
        scrollView.addSubview(containerView)
        
        
        containerView.addSubview(titalLabel)
        containerView.addSubview(postedByLabel)
        containerView.addSubview(profileImageView)
        containerView.addSubview(roleLabel)
        containerView.addSubview(postdOnLabel)
        containerView.addSubview(descriptionLabel)
        containerView.addSubview(descriptionTextView)
        containerView.addSubview(attachmentsLabel)
        containerView.addSubview(scrollViewImages)
        containerView.addSubview(pageControl)
        containerView.addSubview(requestMoreInfoLabel)
        
        topView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        backButton.topAnchor.constraint(equalTo: topView.topAnchor,constant:35).isActive = true
        backButton.leadingAnchor.constraint(equalTo: topView.leadingAnchor).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        scrollView.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: topView.leadingAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        containerView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true

  
        titalLabel.topAnchor.constraint(equalTo: containerView.topAnchor,constant:20).isActive = true
        titalLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor,constant:20).isActive = true
        titalLabel.widthAnchor.constraint(equalTo: view.widthAnchor,constant:-40).isActive = true
//        titalLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 35).isActive = true
        titalLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        postedByLabel.topAnchor.constraint(equalTo: titalLabel.bottomAnchor,constant:15).isActive = true
        postedByLabel.leadingAnchor.constraint(equalTo: titalLabel.leadingAnchor).isActive = true
        postedByLabel.trailingAnchor.constraint(equalTo: titalLabel.trailingAnchor).isActive = true
        postedByLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        profileImageView.topAnchor.constraint(equalTo: postedByLabel.bottomAnchor,constant:10).isActive = true
        profileImageView.leadingAnchor.constraint(equalTo: postedByLabel.leadingAnchor).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        roleLabel.topAnchor.constraint(equalTo: profileImageView.topAnchor).isActive = true
        roleLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor,constant:10).isActive = true
        roleLabel.trailingAnchor.constraint(equalTo: titalLabel.trailingAnchor).isActive = true
        roleLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        postdOnLabel.topAnchor.constraint(equalTo: roleLabel.bottomAnchor,constant:1).isActive = true
        postdOnLabel.leadingAnchor.constraint(equalTo: roleLabel.leadingAnchor).isActive = true
        postdOnLabel.trailingAnchor.constraint(equalTo: roleLabel.trailingAnchor).isActive = true
        postdOnLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        descriptionLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor,constant:20).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: postedByLabel.leadingAnchor).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: postedByLabel.trailingAnchor).isActive = true
        descriptionLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor,constant:1).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor).isActive = true
        descriptionTextView.widthAnchor.constraint(equalTo: view.widthAnchor,constant:-40).isActive = true
        descriptionTextView.heightAnchor.constraint(greaterThanOrEqualToConstant: 20).isActive = true
        
        attachmentsLabel.topAnchor.constraint(equalTo: descriptionTextView.bottomAnchor,constant:20).isActive = true
        attachmentsLabel.leadingAnchor.constraint(equalTo: postedByLabel.leadingAnchor).isActive = true
        attachmentsLabel.trailingAnchor.constraint(equalTo: postedByLabel.trailingAnchor).isActive = true
        attachmentsLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        scrollViewImages.topAnchor.constraint(equalTo: attachmentsLabel.bottomAnchor,constant:5).isActive = true
        scrollViewImages.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor).isActive = true
        scrollViewImages.widthAnchor.constraint(equalTo: descriptionTextView.widthAnchor).isActive = true
        scrollViewImages.heightAnchor.constraint(equalToConstant: 180).isActive = true
        
//        if attachmentArray.count>0{
//            scrollViewImages.heightAnchor.constraint(equalToConstant: 180).isActive = true
//            attachmentsLabel.isHidden = false
//            pageControl.isHidden = false
//        }else{
//            scrollViewImages.heightAnchor.constraint(equalToConstant: 1).isActive = true
//            attachmentsLabel.isHidden = true
//            pageControl.isHidden = true
//        }
//        self.scrollViewImages.layoutIfNeeded()
        
        pageControl.topAnchor.constraint(equalTo: scrollViewImages.bottomAnchor).isActive = true
        pageControl.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor).isActive = true
        pageControl.widthAnchor.constraint(equalTo: descriptionTextView.widthAnchor).isActive = true
        pageControl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        requestMoreInfoLabel.topAnchor.constraint(equalTo: pageControl.bottomAnchor,constant:15).isActive = true
        requestMoreInfoLabel.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor).isActive = true
        requestMoreInfoLabel.widthAnchor.constraint(equalTo: descriptionTextView.widthAnchor).isActive = true
        requestMoreInfoLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
//        if #available(iOS 11.0, *) {
//            requestMoreInfoLabel.bottomAnchor.constraint(equalTo: containerView.safeAreaLayoutGuide.bottomAnchor,constant:-20).isActive = true
//        } else {
//            requestMoreInfoLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor,constant:-20).isActive = true
//        }
        
    }
}
