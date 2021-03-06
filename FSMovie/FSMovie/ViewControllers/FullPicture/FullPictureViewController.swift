//
//  FullPictureViewController.swift
//  FSMovie
//
//  Created by Игорь Попов on 05.12.2020.
//  Copyright © 2020 AirIgor. All rights reserved.
//

import UIKit

class FullPictureViewController: UIViewController {
    
    var fullPicture: String = ""

        
    @IBOutlet weak private var fullPictureImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setFullImage()
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    
    func setFullImage() {
        let imageUrl = ApiKeys.startImgUrl + fullPicture
        fullPictureImage.downloaded(from: imageUrl)
    }
    
}
