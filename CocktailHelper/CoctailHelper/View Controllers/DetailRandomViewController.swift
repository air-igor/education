//
//  DetailRandomViewController.swift
//  CoctailHelper
//
//  Created by Игорь Попов on 31.08.2020.
//  Copyright © 2020 AirIgor. All rights reserved.
//

import UIKit

class DetailRandomViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameCoctail: UILabel!
    @IBOutlet weak var instructionsCoctail: UILabel!
    @IBOutlet weak var ingridients: UILabel!
    
    
    var coctail: Drinks?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageBounds()
        updateInterface()
        
        guard let urlImageString = coctail?.strDrinkThumb else { return }
        let url = urlImageString
        imageView.downloaded(from: url)
    }
    
    func imageBounds() {
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = imageView.frame.height / 2
    }
    
    func updateInterface() {
        nameCoctail.text = coctail?.strDrink
        ingridients.text = "Ingridients: \n\(coctail?.ingredients ?? "Non information")"
        instructionsCoctail.text = "Instruction: \n\(coctail?.strInstructions ?? "Non information")"
        
        
    }
}
