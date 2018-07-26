//
//  ViewController.swift
//  DynamicScrollView
//
//  Created by kashee on 26/07/18.
//  Copyright © 2018 kashee. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    
    var images:[String] = ["announcement","complaints","leave","polls"]
    var frame = CGRect(x:0,y:0,width:0,height:0)
    var isAttachment:Bool?
    
    let topView:UIView = {
        let view =  UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .orange
        return view
    }()
    
    let backButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "close_avatar"), for: .normal)
        
//        button.addTarget(self, action: #selector(ViewPostViewController.closeThisView), for: .touchUpInside)
        return button
    }()
    
    let scrollView:UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    let titalLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Announcement Tital Low Attendance Hostel Block D"
        label.numberOfLines = 0
        label.sizeToFit()
//        label.font = UIFont.sfDisplayBold(ofSize: 20)
        label.textColor = UIColor(red: 33.0/255.0, green: 73.0/255.0, blue: 88.0/255.0, alpha: 1)
        return label
    }()
    
    let postedByLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Posted by"
//        label.font = UIFont.sfDisplayRegular(ofSize: 16)
        label.textColor = UIColor(red: 33.0/255.0, green: 73.0/255.0, blue: 88.0/255.0, alpha: 0.75)
        return label
    }()
    
    let profileImageView:UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "announcement"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 25
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let roleLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Admin"
//        label.font = UIFont.sfDisplayBold(ofSize: 16)
        label.textColor = UIColor(red: 33.0/255.0, green: 73.0/255.0, blue: 88.0/255.0, alpha: 1)
        return label
    }()
    
    let postdOnLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "at2:06pm, 13th jun 2018"
//        label.font = UIFont.sfDisplayRegular(ofSize: 14)
        label.textColor = UIColor(red: 33.0/255.0, green: 73.0/255.0, blue: 88.0/255.0, alpha: 1)
        return label
    }()
    
    let descriptionLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Description"
//        label.font = UIFont.sfDisplayRegular(ofSize: 16)
        label.textColor = UIColor(red: 33.0/255.0, green: 73.0/255.0, blue: 88.0/255.0, alpha: 0.75)
        return label
    }()
    
    let descriptionTextView:UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "My eye will be operated and will be admitted in the hospital for 4 days. My eye will be operated and will be admitted in the hospital for 4 days."
        textView.isScrollEnabled = false
        textView.isUserInteractionEnabled = false
//        textView.font = UIFont.sfDisplayRegular(ofSize: 16)
        textView.textColor = UIColor(red: 33.0/255.0, green: 73.0/255.0, blue: 88.0/255.0, alpha: 0.75)
        return textView
    }()
    
    let attachmentsLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Attachments"
//        label.font = UIFont.sfDisplayRegular(ofSize: 16)
        label.textColor = UIColor(red: 33.0/255.0, green: 73.0/255.0, blue: 88.0/255.0, alpha: 0.75)
        return label
    }()
    
    let scrollViewImages:UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        
        return scroll
    }()
    
    let attachmentImageView:UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "polls"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    lazy var pageControl:UIPageControl = {
        let pc = UIPageControl()
        pc.translatesAutoresizingMaskIntoConstraints = false
        pc.currentPage = 0
        pc.currentPageIndicatorTintColor = UIColor(red: 33.0/255.0, green: 73.0/255.0, blue: 88.0/255.0, alpha: 1)
        pc.pageIndicatorTintColor = UIColor(red: 197.0/255, green: 202.0/255, blue: 204.0/255, alpha: 1)
        return pc
    }()
    
    let requestMoreInfoLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Request More Info?"
//        label.font = UIFont.sfDisplaySemibold(ofSize: 16)
        label.textColor = UIColor(red: 0.0/255.0, green: 183.0/255.0, blue: 224.0/255.0, alpha: 1)
        return label
    }()
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        pageControl.numberOfPages = images.count
        
        if images.count > 0{
            for index in 0..<images.count{
                frame.origin.x = scrollViewImages.frame.size.width * CGFloat(index)
                frame.size = scrollViewImages.frame.size
                let imageView = UIImageView(frame: frame)
                imageView.tag = index
                imageView.image = UIImage(named: images[index])
                scrollViewImages.addSubview(imageView)
                
            }
            scrollViewImages.contentSize = CGSize(width:(scrollViewImages.frame.size.width * CGFloat(images.count)), height:scrollViewImages.frame.size.height)
            
            self.scrollViewImages.isHidden = false
            self.view.layoutIfNeeded()
            
            scrollViewImages.delegate = self
            scrollViewImages.isPagingEnabled = true
            scrollViewImages.showsHorizontalScrollIndicator = false
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        setAutolayoutConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

